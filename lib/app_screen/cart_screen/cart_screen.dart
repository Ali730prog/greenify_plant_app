import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_screen/payment_receipt_screen/payment_recipt_screen.dart';
import '../../app_const/app_color.dart';
import '../../common_widget/bold_text.dart';
import '../../common_widget/light_text.dart';
import '../../common_widget/common_button.dart';
import '../order_complete_screen/order_complete_screen.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  late User? user;
  List<Map<String, dynamic>> wishList = [];

  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser;
    fetchCartData();
  }

  Future<void> fetchCartData() async {
    try {
      // 1. Fetch the user ID and get the cart ID from the profile data
      String userId = user!.uid;
      DocumentSnapshot profileSnapshot = await firestore
          .collection('users')
          .doc(userId)
          .collection('profile')
          .doc(
              'profile_data') // Assuming it's the document where cartId is stored
          .get();

      // Check if profile data exists and contains cartId
      if (profileSnapshot.exists) {
        String cartId = profileSnapshot['cartId']; // cartId is stored here

        // 2. Now that we have the cartId, let's fetch the items in that cart
        QuerySnapshot cartSnapshot = await firestore
            .collection('users')
            .doc(userId)
            .collection('cart')
            .doc(cartId) // Use the cartId here
            .collection('items') // This is where items are stored
            .get();

        // Check if cart has items
        if (cartSnapshot.docs.isNotEmpty) {
          setState(() {
            wishList = cartSnapshot.docs.map((doc) {
              return {
                "id": doc.id,
                "image": doc["productImages"] != null &&
                        doc["productImages"].isNotEmpty
                    ? doc["productImages"]
                        [0] // Use the first image from the list
                    : "https://firebasestorage.googleapis.com/v0/b/wallify-85936.appspot.com/o/office%2Fcart_3.png?alt=media&token=ff6e8a9d-e09a-4781-819f-c5513b247008", // Default image
                "name": doc["productName"] ?? "Unknown",
                "site": doc["productType"] ?? "Unknown",
                "price": doc["price"] ?? 0,
                "qty": doc["quantity"] ?? 1,
                "desc": doc["productDesc"] ?? "No description available",
                "timestamp": doc["timestamp"],
                "weight": doc["weight"] ?? "0",
                "width": doc["width"] ?? "0",
              };
            }).toList();
          });
        } else {
          print("No items found in this cart.");
        }
      } else {
        print("No profile data found for this user.");
      }
    } catch (e) {
      print("Error fetching cart data: $e");
    }
  }

// Function to delete the item from the cart
  Future<void> deleteItem(String cartItemId) async {
    try {
      // 1. Fetch the user's cartId from their profile
      String userId = user!.uid;
      DocumentSnapshot profileSnapshot = await firestore
          .collection('users')
          .doc(userId)
          .collection('profile')
          .doc('profile_data') // Assuming this is where cartId is stored
          .get();

      // Check if profile data exists and contains cartId
      if (profileSnapshot.exists) {
        String cartId =
            profileSnapshot['cartId']; // Get the cartId from profile data

        // 2. Delete the item from the correct cart and items collection
        await firestore
            .collection('users')
            .doc(userId)
            .collection('cart')
            .doc(cartId) // Use the cartId fetched from profile
            .collection('items')
            .doc(cartItemId) // Delete the item using its ID
            .delete();

        print("Item deleted successfully.");
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("product deleted successfully")));
        fetchCartData(); // Re-fetch the cart data after deletion
      } else {
        print("No profile data found for this user.");
      }
    } catch (e) {
      print("Error deleting item: $e");
    }
  }

  // Function to update the quantity (Increase/Decrease)
  Future<void> updateItemQuantity(String cartItemId, int quantity) async {
    try {
      DocumentReference itemRef = firestore
          .collection('users')
          .doc(user!.uid)
          .collection('cart')
          .doc(cartItemId)
          .collection('items')
          .doc(cartItemId);

      await itemRef.update({
        'quantity': quantity,
        'price': quantity *
            (await itemRef.get())['price'], // Update price based on quantity
      });

      fetchCartData(); // Re-fetch the data after updating quantity
    } catch (e) {
      print("Error updating item: $e");
    }
  }

  int get totalPrice {
    int total = 0;
    for (var item in wishList) {
      int price = int.tryParse(item['price'].toString()) ??
          0; // Default to 0 if it's not a valid number
      int qty = item['qty'] ?? 0; // Default to 0 if quantity is null
      total += price * qty; // Multiply the price by the quantity
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.green118844,
          title: Text("Cart", style: TextStyle(color: AppColor.whiteFFFFFF)),
        ),
        backgroundColor: AppColor.whiteFFFFFF,
        body: wishList.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  SizedBox(height: h * 0.02),
                  // Display the cart items using the custom widget
                  Expanded(
                    child: ListView.builder(
                      itemCount: wishList.length,
                      itemBuilder: (ctx, index) {
                        var item = wishList[index];
                        int price = item['price'];
                        int quantity = item['qty'];

                        return Container(
                          height: h * 0.17,
                          child: _cartWidget(
                            name: item['name'],
                            site: item['site'],
                            price: (price * quantity).toString(),
                            image: item['image'],
                            qty: quantity,
                            index: index,
                          ),
                        );
                      },
                    ),
                  ),
                  // Display the total price
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                    child: BoldText(
                      text: "Total Price: \$ ${totalPrice.toString()}",
                      color: AppColor.green80CA5B,
                      fontweight: FontWeight.w600,
                      textsize: 20,
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                    child: CommonButton(
                      ontap: () {
                        // Navigate to the order complete screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderCompleteReciptScreen(
                              price: totalPrice,
                              Date: DateTime.now(),
                            ),
                          ),
                        );
                      },
                      text: "Buy Now",
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                ],
              ),
      ),
    );
  }

  Widget _cartWidget({
    required String name,
    required String site,
    required String price,
    required String image,
    required int qty,
    required int index,
  }) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.01),
      child: SizedBox(
        height: h * 0.16,
        child: Card(
          shadowColor: AppColor.grey544C4C,
          elevation: 5,
          color: AppColor.whiteFFFFFF,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                image,
                width: w * 0.20,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: EdgeInsets.only(left: w * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BoldText(
                      text: name,
                      color: AppColor.green80CA5B,
                      fontweight: FontWeight.w600,
                      textsize: 16,
                    ),
                    SizedBox(
                      height: h * 0.002,
                    ),
                    LightText(
                      text: site,
                      color: AppColor.grey4D4D4D,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                    Row(
                      children: [
                        LightText(
                          text: "Price",
                          color: AppColor.grey898989,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                        Container(
                          // width: 50,
                          child: LightText(
                            // textOverflow: TextOverflow.ellipsis,
                            text: " \$${price}",
                            color: AppColor.green80CA5B,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: w * 0.32,
                height: h * 0.04,
                decoration: BoxDecoration(
                    color: AppColor.greenEBFDF2.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(100)),
                child: Stack(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  wishList[index]['qty']++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: AppColor.green80CA5B,
                              )),
                          LightText(
                              text: wishList[index]['qty'].toString(),textScaler: TextScaler.linear(1),),

                          InkWell(
                              onTap: () {
                                setState(() {
                                  if (wishList[index]['qty'] > 1) {
                                    wishList[index]['qty']--;
                                  }
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                color: AppColor.green80CA5B,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  deleteItem(wishList[index]['id']);
                },
                icon: Icon(
                  Icons.delete,
                  color: AppColor.redF52121,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

bool iscart = false;
