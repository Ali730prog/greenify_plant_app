// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import '../../app_const/app_color.dart';
// import '../../common_widget/bold_text.dart';
// import '../../common_widget/common_button.dart';
// import '../../common_widget/light_text.dart';
//
//
// class DetailScreen extends StatefulWidget {
//   final String? name;
//   final List? images;
//   final String? desc;
//   final int? price;
//   final String? type;
//   final String? height;
//   final String? width;
//   final String? weight;
//
//   const DetailScreen({
//     super.key,
//     this.name,
//     this.images,
//     this.desc,
//     this.price,
//     this.type,
//     this.height,
//     this.width,
//     this.weight,
//   });
//
//   @override
//   State<DetailScreen> createState() => _DetailScreenState();
// }
//
// class _DetailScreenState extends State<DetailScreen> {
//   int qty = 1;
//
//   // Function to add the item to the user's cart in Firestore
//   Future<void> addToCart() async {
//     try {
//       User? user = FirebaseAuth.instance.currentUser;
//       if (user != null) {
//         FirebaseFirestore firestore = FirebaseFirestore.instance;
//
//         // Get the user's cart ID
//         String? cartId = await getCartId(user.uid); // Fetch cart ID dynamically
//
//         // If no cart ID is found, create a new cart and get its ID
//         if (cartId == null) {
//           cartId = await createNewCart(user.uid); // Create and fetch new cart ID
//         }
//
//         // Create a cart item to add
//         Map<String, dynamic> cartItem = {
//           'productName': widget.name,
//           'price': widget.price,
//           'quantity': qty,
//           'productType': widget.type,
//           'productImages': widget.images,
//           'productDesc': widget.desc,
//           'height': widget.height,
//           'width': widget.width,
//           'weight': widget.weight,
//           'timestamp': FieldValue.serverTimestamp(),
//         };
//
//         // Add the item to the user's cart collection
//         await firestore
//             .collection('users')
//             .doc(user.uid)
//             .collection('cart')
//             .doc(cartId) // Use the dynamic cart ID
//             .collection('items')
//             .add(cartItem);
//
//         print('Item added to cart successfully');
//       } else {
//         print('No user is logged in');
//       }
//     } catch (e) {
//       print('Error adding item to cart: $e');
//     }
//   }
//
//   // Function to get the user's cart ID (if exists)
//   Future<String?> getCartId(String userId) async {
//     try {
//       DocumentSnapshot userDoc = await FirebaseFirestore.instance
//           .collection('users')
//           .doc(userId)
//           .collection('profile') // Assuming profile contains cart ID
//           .doc('profile_data') // Replace with actual profile document ID
//           .get();
//
//       if (userDoc.exists) {
//         // Assuming cartId is stored in the profile document
//         return userDoc['cartId'];
//       }
//     } catch (e) {
//       print('Error fetching cart ID: $e');
//     }
//     return null; // No cart ID found
//   }
//
//   // Function to create a new cart and return the cart ID
//   Future<String> createNewCart(String userId) async {
//     try {
//       DocumentReference newCartRef = await FirebaseFirestore.instance
//           .collection('users')
//           .doc(userId)
//           .collection('cart')
//           .add({});
//
//       // Save the cart ID in the user's profile (optional)
//       await FirebaseFirestore.instance
//           .collection('users')
//           .doc(userId)
//           .collection('profile')
//           .doc('profile_data')
//           .set({'cartId': newCartRef.id}, SetOptions(merge: true));
//
//       return newCartRef.id;
//     } catch (e) {
//       print('Error creating new cart: $e');
//       rethrow;
//     }
//   }
//
//   // Function to add an item to the wishlist
//   Future<void> addItemToWishlist(Map<String, dynamic> itemData,String userId) async {
//     try {
//
//
//       // 1. Fetch the user's wishlistId from their profile
//       DocumentSnapshot profileSnapshot = await FirebaseFirestore.instance
//           .collection('users')
//           .doc(userId)
//           .collection('profile')
//           .doc('profile_data')  // Assuming this is where wishlistId is stored
//           .get();
//
//       // Check if profile data exists and contains wishlistId
//       if (profileSnapshot.exists) {
//         String wishlistId = profileSnapshot['wishlistId'];  // Get the wishlistId from profile data
//
//         // 2. Add the item to the wishlist under the specific wishlistId and items collection
//         await await FirebaseFirestore.instance
//             .collection('users')
//             .doc(userId)
//             .collection('wishlist')
//             .doc(wishlistId) // Use the wishlistId fetched from profile
//             .collection('items')
//             .add(itemData);  // Add the item data to the items collection
//
//         print("Item added to wishlist successfully.");
//       } else {
//         print("No profile data found for this user.");
//       }
//     } catch (e) {
//       print("Error adding item to wishlist: $e");
//     }
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     print(widget.width);
//     print(widget.height);
//     print(widget.weight);
//     int price = widget.price! * qty;
//
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(Icons.arrow_back_ios),
//           ),
//           iconTheme: IconThemeData(
//             color: AppColor.whiteFFFFFF,
//           ),
//           backgroundColor: AppColor.green118844,
//           centerTitle: true,
//           title: BoldText(
//             text: "Plant Detail",
//             color: AppColor.whiteFFFFFF,
//             fontweight: FontWeight.w600,
//             textsize: 20,
//           ),
//           actions: [IconButton(onPressed: (){
//
//           }, icon: Icon(Icons.heart_broken))],
//         ),
//         backgroundColor: AppColor.whiteFFFFFF,
//         body: Container(
//           width: w,
//           height: h,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                   // height: h * 0.03,
//                 ),
//                 Stack(
//                   children: [
//                     // Carousel Slider for images
//                     CarouselSlider(
//                       items: widget.images?.map((imageUrl) {
//                         return Builder(
//                           builder: (BuildContext context) {
//                             return ClipRRect(
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(12),
//                                 topRight: Radius.circular(12),
//                               ),
//                               child: Image.network(
//                                 imageUrl,
//                                 width: w,
//                                 height: h * 0.40,
//                                 fit: BoxFit.cover,
//                               ),
//                             );
//                           },
//                         );
//                       }).toList() ?? [], // If images are null, fallback to an empty list
//                       options: CarouselOptions(
//                         height: h * 0.40,
//                         enlargeCenterPage: false,
//                         autoPlay: true,
//                       ),
//                     ),
//                     ClipRRect(
//                       child: Container(
//                         margin: EdgeInsets.only(top: h * 0.30),
//                         decoration: BoxDecoration(
//                             color: AppColor.whiteFFFFFF,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Padding(
//                           padding: EdgeInsets.only(left: w * 0.05),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               SizedBox(
//                                 height: h * 0.03,
//                               ),
//                               BoldText(
//                                 text: widget.name!,
//                                 color: AppColor.black0000000,
//                                 fontweight: FontWeight.w600,
//                                 textsize: 22,
//                               ),
//                               SizedBox(
//                                 height: h * 0.02,
//                               ),
//                               LightText(
//                                 text: widget.desc ?? "",
//                                 color: AppColor.black0000000,
//                               ),
//                               SizedBox(
//                                 height: h * 0.01,
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                     left: w * 0.01, right: w * 0.04),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Container(
//                                       child: Column(
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                         mainAxisAlignment:
//                                         MainAxisAlignment.start,
//                                         children: [
//                                           LightText(
//                                             text: "Price",
//                                             color: AppColor.black0000000,
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                           ),
//                                           BoldText(
//                                             text: "\$$price",
//                                             color: AppColor.black0000000,
//                                             fontweight: FontWeight.w600,
//                                             textsize: 22,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       child: Column(
//                                         children: [
//                                           LightText(
//                                             text: "Quantity",
//                                             color: AppColor.black0000000,
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 20,
//                                           ),
//                                           Row(
//                                             children: [
//                                               IconButton.filled(
//                                                 style: ButtonStyle(
//                                                     minimumSize:
//                                                     WidgetStateProperty.all(
//                                                         Size(15, 15)),
//                                                     maximumSize:
//                                                     WidgetStateProperty.all(
//                                                         Size(30, 30)),
//                                                     backgroundColor:
//                                                     WidgetStatePropertyAll(
//                                                         AppColor
//                                                             .green80CA5B)),
//                                                 onPressed: () {
//                                                   setState(() {
//                                                     qty++;
//                                                   });
//                                                 },
//                                                 icon: Icon(
//                                                   Icons.add,
//                                                   size: 15,
//                                                   color: Colors.white,
//                                                 ),
//                                               ),
//                                               Container(
//                                                 width: w * 0.07,
//                                                 child: Center(
//                                                   child: LightText(
//                                                     text: qty.toString(),
//                                                     color: AppColor
//                                                         .black0000000,
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 22,
//                                                   ),
//                                                 ),
//                                               ),
//                                               IconButton.filled(
//                                                 style: ButtonStyle(
//                                                     minimumSize:
//                                                     WidgetStateProperty.all(
//                                                         Size(15, 15)),
//                                                     maximumSize:
//                                                     WidgetStateProperty.all(
//                                                         Size(30, 30)),
//                                                     backgroundColor:
//                                                     WidgetStatePropertyAll(
//                                                         AppColor
//                                                             .green80CA5B)),
//                                                 color: AppColor.redF52121,
//                                                 onPressed: () {
//                                                   setState(() {
//                                                     qty > 1 ? qty-- : null;
//                                                   });
//                                                 },
//                                                 icon: Center(
//                                                   child: Icon(
//                                                     Icons.remove,
//                                                     color: Colors.white,
//                                                     size: 15,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: h * 0.02,
//                               ),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Container(
//                                     child: Column(
//                                       children: [
//                                         LightText(
//                                           text: "Height",
//                                           color: AppColor.black0000000,
//                                         ),
//                                         LightText(
//                                           text: widget.height!,
//                                           // text: "7.2",
//                                           color: AppColor.green80CA5B,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     child: Column(
//                                       children: [
//                                         LightText(
//                                           text: "Humadity",
//                                           color: AppColor.black0000000,
//                                         ),
//                                         LightText(
//                                           // text: "72%",
//                                           text: "${widget.weight!}%",
//                                           // text: widget.width!,
//                                           color: AppColor.green80CA5B,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     child: Column(
//                                       children: [
//                                         LightText(
//                                           text: "width",
//                                           color: AppColor.black0000000,
//                                         ),
//                                         LightText(
//                                           text: widget.width!,
//                                           // text: "3.3%",
//                                           color: AppColor.green80CA5B,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: h * 0.02,
//                               ),
//                               Align(
//                                   alignment: Alignment.center,
//                                   child: Center(
//                                       child: Padding(
//                                         padding: EdgeInsets.only(right: w * 0.05),
//                                         child: CommonButton(
//                                           ontap: () async {
//                                             // Call the function to add the product to cart
//                                             await addToCart();
//                                             // Navigator.push(
//                                             //     context,
//                                             //     MaterialPageRoute(
//                                             //         builder: (context) =>
//                                             //             OrderCompleteReciptScreen(
//                                             //               price: price,
//                                             //               Date: DateTime.now(),
//                                             //             )));
//                                             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                                                 backgroundColor: Color(0xff118844),
//                                                 content: LightText(
//                                                   text: "Your Product add Successfully in cart",
//                                                   fontSize: 14,
//                                                   color: AppColor.whiteFFFFFF,
//                                                 )));
//                                           },
//                                           text: "Add to Cart",
//                                         ),
//                                       ))),
//                               SizedBox(
//                                 height: h * 0.03,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_screen/bottom_bar_screen/bottom_bar_screen.dart';
import '../../app_const/app_color.dart';
import '../../common_widget/bold_text.dart';
import '../../common_widget/common_button.dart';
import '../../common_widget/light_text.dart';

class DetailScreen extends StatefulWidget {
  final String? name;
  final List? images;
  final String? desc;
  final int? price;
  final String? type;
  final String? height;
  final String? width;
  final String? weight;

  const DetailScreen({
    super.key,
    this.name,
    this.images,
    this.desc,
    this.price,
    this.type,
    this.height,
    this.width,
    this.weight,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int qty = 1;

  // Function to add the item to the user's cart in Firestore
  Future<void> addToCart() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        FirebaseFirestore firestore = FirebaseFirestore.instance;

        // Get the user's cart ID
        String? cartId = await getCartId(user.uid); // Fetch cart ID dynamically

        // If no cart ID is found, create a new cart and get its ID
        if (cartId == null) {
          cartId =
              await createNewCart(user.uid); // Create and fetch new cart ID
        }

        // Create a cart item to add
        Map<String, dynamic> cartItem = {
          'productName': widget.name,
          'price': widget.price,
          'quantity': qty,
          'productType': widget.type,
          'productImages': widget.images,
          'productDesc': widget.desc,
          'height': widget.height,
          'width': widget.width,
          'weight': widget.weight,
          'timestamp': FieldValue.serverTimestamp(),
        };

        // Add the item to the user's cart collection
        await firestore
            .collection('users')
            .doc(user.uid)
            .collection('cart')
            .doc(cartId) // Use the dynamic cart ID
            .collection('items')
            .add(cartItem);

        print('Item added to cart successfully');
      } else {
        print('No user is logged in');
      }
    } catch (e) {
      print('Error adding item to cart: $e');
    }
  }

  // Function to get the user's cart ID (if exists)
  Future<String?> getCartId(String userId) async {
    try {
      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .collection('profile') // Assuming profile contains cart ID
          .doc('profile_data') // Replace with actual profile document ID
          .get();

      if (userDoc.exists) {
        // Assuming cartId is stored in the profile document
        return userDoc['cartId'];
      }
    } catch (e) {
      print('Error fetching cart ID: $e');
    }
    return null; // No cart ID found
  }

  // Function to create a new cart and return the cart ID
  Future<String> createNewCart(String userId) async {
    try {
      DocumentReference newCartRef = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .collection('cart')
          .add({});

      // Save the cart ID in the user's profile (optional)
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .collection('profile')
          .doc('profile_data')
          .set({'cartId': newCartRef.id}, SetOptions(merge: true));

      return newCartRef.id;
    } catch (e) {
      print('Error creating new cart: $e');
      rethrow;
    }
  }

  Future<void> addItemToWishlist(
      Map<String, dynamic> itemData, String userId) async {
    try {
      // 1. Fetch the user's profile data to get wishlistId
      DocumentSnapshot profileSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .collection('profile')
          .doc(
              'profile_data') // Assuming this is where the wishlistId is stored
          .get();

      // 2. Check if the profile data exists
      if (profileSnapshot.exists) {
        // Fetch wishlistId or create a new one if it doesn't exist
        String wishlistId = profileSnapshot['wishlistId'] ?? '';

        // 3. If wishlistId is empty, create a new wishlist collection and save its ID
        if (wishlistId.isEmpty) {
          // Create a new wishlist collection for the user
          DocumentReference newWishlistRef = await FirebaseFirestore.instance
              .collection('users')
              .doc(userId)
              .collection('wishlist')
              .add({});

          // Update the profile document with the new wishlistId
          wishlistId = newWishlistRef.id;
          await FirebaseFirestore.instance
              .collection('users')
              .doc(userId)
              .collection('profile')
              .doc('profile_data')
              .set({'wishlistId': wishlistId}, SetOptions(merge: true));

          print("New wishlist created with ID: $wishlistId");
        }

        // 4. Add the item to the wishlist under the specific wishlistId
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userId)
            .collection('wishlist')
            .doc(wishlistId)
            .collection('items')
            .add(itemData); // Add the item data to the items collection

        print("Item added to wishlist successfully.");
      } else {
        print("No profile data found for this user.");
      }
    } catch (e) {
      print("Error adding item to wishlist: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    print(widget.width);
    print(widget.height);
    print(widget.weight);
    int price = widget.price! * qty;

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              setState(() {
                heart = false;
              });
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          iconTheme: IconThemeData(
            color: AppColor.whiteFFFFFF,
          ),
          backgroundColor: AppColor.green118844,
          centerTitle: true,
          title: BoldText(
            text: "Plant Detail",
            color: AppColor.whiteFFFFFF,
            fontweight: FontWeight.w600,
            textsize: 20,
          ),
          actions: [
            IconButton(
              onPressed: () async {
                User? user = FirebaseAuth.instance.currentUser;
                if (user != null) {
                  // Prepare the item data to add to the wishlist
                  Map<String, dynamic> itemData = {
                    'productName': widget.name,
                    'price': widget.price,
                    'quantity': qty,
                    'productType': widget.type,
                    'productImages': widget.images,
                    'productDesc': widget.desc,
                    'height': widget.height,
                    'width': widget.width,
                    'weight': widget.weight,
                    'timestamp': FieldValue.serverTimestamp(),
                  };
                  setState(() {
                    heartcolor = true;
                  });
                  // Add the item to the wishlist
                  await addItemToWishlist(itemData, user.uid);

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Color(0xff118844),
                    content: LightText(
                      text: "Item added to wishlist successfully.",
                      fontSize: 14,
                      color: AppColor.whiteFFFFFF,
                    ),
                  ));
                } else {
                  print('No user is logged in');
                }
              },
              icon: heart
                  ? Icon(
                      Icons.favorite_border,
                      color: heartcolor ? Colors.red : Colors.white,
                      // color: heartcolor ? Colors.red : Colors.white,
                    )
                  : Icon(
                      Icons.favorite_border,
                      color: heartcolor ? Colors.white : Colors.red,
                    ),
            )
          ],
        ),
        backgroundColor: AppColor.whiteFFFFFF,
        body: Container(
          width: w,
          height: h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    // height: h * 0.03,
                    ),
                Stack(
                  children: [
                    // Carousel Slider for images
                    CarouselSlider(
                      items: widget.images?.map((imageUrl) {
                            return Builder(
                              builder: (BuildContext context) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  child: Image.network(
                                    imageUrl,
                                    width: w,
                                    height: h * 0.40,
                                    fit: BoxFit.cover,
                                  ),
                                );
                              },
                            );
                          }).toList() ??
                          [],
                      // If images are null, fallback to an empty list
                      options: CarouselOptions(
                        height: h * 0.40,
                        enlargeCenterPage: false,
                        autoPlay: true,
                      ),
                    ),
                    ClipRRect(
                      child: Container(
                        margin: EdgeInsets.only(top: h * 0.30),
                        decoration: BoxDecoration(
                            color: AppColor.whiteFFFFFF,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: h * 0.03,
                              ),
                              BoldText(
                                text: widget.name!,
                                color: AppColor.black0000000,
                                fontweight: FontWeight.w600,
                                textsize: 22,
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              LightText(
                                text: widget.desc ?? "",
                                color: AppColor.black0000000,
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: w * 0.01, right: w * 0.04),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          LightText(
                                            text: "Price",
                                            color: AppColor.black0000000,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                          ),
                                          BoldText(
                                            text: "\$$price",
                                            color: AppColor.black0000000,
                                            fontweight: FontWeight.w600,
                                            textsize: 22,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          LightText(
                                            text: "Quantity",
                                            color: AppColor.black0000000,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          Row(
                                            children: [
                                              IconButton.filled(
                                                style: ButtonStyle(
                                                    minimumSize:
                                                        WidgetStateProperty.all(
                                                            Size(15, 15)),
                                                    maximumSize:
                                                        WidgetStateProperty.all(
                                                            Size(30, 30)),
                                                    backgroundColor:
                                                        WidgetStatePropertyAll(
                                                            AppColor
                                                                .green80CA5B)),
                                                onPressed: () {
                                                  setState(() {
                                                    qty++;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.add,
                                                  size: 15,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Container(
                                                width: w * 0.07,
                                                child: Center(
                                                  child: LightText(
                                                    text: qty.toString(),
                                                    color:
                                                        AppColor.black0000000,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22,
                                                  ),
                                                ),
                                              ),
                                              IconButton.filled(
                                                style: ButtonStyle(
                                                    minimumSize:
                                                        WidgetStateProperty.all(
                                                            Size(15, 15)),
                                                    maximumSize:
                                                        WidgetStateProperty.all(
                                                            Size(30, 30)),
                                                    backgroundColor:
                                                        WidgetStatePropertyAll(
                                                            AppColor
                                                                .green80CA5B)),
                                                color: AppColor.redF52121,
                                                onPressed: () {
                                                  setState(() {
                                                    qty > 1 ? qty-- : null;
                                                  });
                                                },
                                                icon: Center(
                                                  child: Icon(
                                                    Icons.remove,
                                                    color: Colors.white,
                                                    size: 15,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        LightText(
                                          text: "Height",
                                          color: AppColor.black0000000,
                                        ),
                                        LightText(
                                          text: widget.height!,
                                          // text: "7.2",
                                          color: AppColor.green80CA5B,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        LightText(
                                          text: "Humadity",
                                          color: AppColor.black0000000,
                                        ),
                                        LightText(
                                          // text: "72%",
                                          text: "${widget.weight!}%",
                                          // text: widget.width!,
                                          color: AppColor.green80CA5B,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        LightText(
                                          text: "width",
                                          color: AppColor.black0000000,
                                        ),
                                        LightText(
                                          text: widget.width!,
                                          // text: "3.3%",
                                          color: AppColor.green80CA5B,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Center(
                                      child: Padding(
                                    padding: EdgeInsets.only(right: w * 0.05),
                                    child: CommonButton(
                                      ontap: () async {
                                        // Call the function to add the product to cart
                                        await addToCart();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor:
                                                    Color(0xff118844),
                                                content: LightText(
                                                  text:
                                                      "Your Product add Successfully in cart",
                                                  fontSize: 14,
                                                  color: AppColor.whiteFFFFFF,
                                                )));
                                      },
                                      text: "Add to Cart",
                                    ),
                                  ))),
                              SizedBox(
                                height: h * 0.03,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

bool heartcolor = false;
