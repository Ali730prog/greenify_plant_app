// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:greenfiy/app_const/app_color.dart';
// import 'package:greenfiy/app_const/app_images.dart';
// import 'package:greenfiy/app_screen/detail_screen/detail_screen.dart';
// import 'package:greenfiy/common_widget/bold_text.dart';
// import 'package:greenfiy/common_widget/light_text.dart';
//
// class WishlistScreen extends StatefulWidget {
//   const WishlistScreen({super.key});
//
//   @override
//   State<WishlistScreen> createState() => _WishlistScreenState();
// }
//
// class _WishlistScreenState extends State<WishlistScreen> {
//
//   List wishList = [
//     {
//       "image": "${AppImages.favourite_1}",
//       "name": "Aloe vera",
//       "site": "outdoor",
//       "price": "40",
//       "height":"7.2",
//       "humadity":"72",
//       "width":"3.3",
//       "des":"Aloe Vera also known as aloe africana has"
//           "strong air purifying qualities. This succulant"
//           "plant is known for purifying air from chemicals"
//           "found in household cleaning product. Unlike"
//           "other indoor plant Aloe keeps water in its"
//           "leavesnot the soil untill it needs it. Aloe requires"
//           "Bright sun light even though it only need very"
//           "little water."
//     },
//     {
//       "image": "${AppImages.favourite_2}",
//       "name": "Flowers",
//       "site": "outdoor",
//       "price": "50",
//       "height":"7.2",
//       "humadity":"72",
//       "width":"3.3",
//       "des":"Aloe Vera also known as aloe africana has"
//           "strong air purifying qualities. This succulant"
//           "plant is known for purifying air from chemicals"
//           "found in household cleaning product. Unlike"
//           "other indoor plant Aloe keeps water in its"
//           "leavesnot the soil untill it needs it. Aloe requires"
//           "Bright sun light even though it only need very"
//           "little water."
//     },
//     {
//       "image": "${AppImages.favourite_1}",
//       "name": "Aloe vera",
//       "site": "outdoor",
//       "price": "40",
//       "height":"7.2",
//       "humadity":"72",
//       "width":"3.3",
//       "des":"Aloe Vera also known as aloe africana has"
//           "strong air purifying qualities. This succulant"
//           "plant is known for purifying air from chemicals"
//           "found in household cleaning product. Unlike"
//           "other indoor plant Aloe keeps water in its"
//           "leavesnot the soil untill it needs it. Aloe requires"
//           "Bright sun light even though it only need very"
//           "little water."
//     },
//     {
//       "image": "${AppImages.favourite_2}",
//       "name": "Flowers",
//       "site": "outdoor",
//       "price": "50",
//       "height":"7.2",
//       "humadity":"72",
//       "width":"3.3",
//       "des":"Aloe Vera also known as aloe africana has"
//           "strong air purifying qualities. This succulant"
//           "plant is known for purifying air from chemicals"
//           "found in household cleaning product. Unlike"
//           "other indoor plant Aloe keeps water in its"
//           "leavesnot the soil untill it needs it. Aloe requires"
//           "Bright sun light even though it only need very"
//           "little water."
//     },
//     {
//       "image": "${AppImages.favourite_1}",
//       "name": "Aloe vera",
//       "site": "outdoor",
//       "price": "40",
//       "height":"7.2",
//       "humadity":"72",
//       "width":"3.3",
//       "des":"Aloe Vera also known as aloe africana has"
//           "strong air purifying qualities. This succulant"
//           "plant is known for purifying air from chemicals"
//           "found in household cleaning product. Unlike"
//           "other indoor plant Aloe keeps water in its"
//           "leavesnot the soil untill it needs it. Aloe requires"
//           "Bright sun light even though it only need very"
//           "little water."
//     },
//     {
//       "image": "${AppImages.favourite_2}",
//       "name": "Flowers",
//       "site": "outdoor",
//       "price": "50",
//       "height":"7.2",
//       "humadity":"72",
//       "width":"3.3",
//       "des":"Aloe Vera also known as aloe africana has"
//           "strong air purifying qualities. This succulant"
//           "plant is known for purifying air from chemicals"
//           "found in household cleaning product. Unlike"
//           "other indoor plant Aloe keeps water in its"
//           "leavesnot the soil untill it needs it. Aloe requires"
//           "Bright sun light even though it only need very"
//           "little water."
//     },
//     {
//       "image": "${AppImages.favourite_1}",
//       "name": "Aloe vera",
//       "site": "outdoor",
//       "price": "40",
//       "height":"7.2",
//       "humadity":"72",
//       "width":"3.3",
//       "des":"Aloe Vera also known as aloe africana has"
//           "strong air purifying qualities. This succulant"
//           "plant is known for purifying air from chemicals"
//           "found in household cleaning product. Unlike"
//           "other indoor plant Aloe keeps water in its"
//           "leavesnot the soil untill it needs it. Aloe requires"
//           "Bright sun light even though it only need very"
//           "little water."
//     },
//     {
//       "image": "${AppImages.favourite_2}",
//       "name": "Flowers",
//       "site": "outdoor",
//       "price": "50",
//       "height":"7.2",
//       "humadity":"72",
//       "width":"3.3",
//       "des":"Aloe Vera also known as aloe africana has"
//           "strong air purifying qualities. This succulant"
//           "plant is known for purifying air from chemicals"
//           "found in household cleaning product. Unlike"
//           "other indoor plant Aloe keeps water in its"
//           "leavesnot the soil untill it needs it. Aloe requires"
//           "Bright sun light even though it only need very"
//           "little water."
//     },
//     {
//       "image": "${AppImages.favourite_1}",
//       "name": "Aloe vera",
//       "site": "outdoor",
//       "price": "40",
//       "height":"7.2",
//       "humadity":"72",
//       "width":"3.3",
//       "des":"Aloe Vera also known as aloe africana has"
//           "strong air purifying qualities. This succulant"
//           "plant is known for purifying air from chemicals"
//           "found in household cleaning product. Unlike"
//           "other indoor plant Aloe keeps water in its"
//           "leavesnot the soil untill it needs it. Aloe requires"
//           "Bright sun light even though it only need very"
//           "little water."
//     },
//     {
//       "image": "${AppImages.favourite_2}",
//       "name": "Flowers",
//       "site": "outdoor",
//       "price": "50",
//       "height":"7.2",
//       "humadity":"72",
//       "width":"3.3",
//       "des":"Aloe Vera also known as aloe africana has"
//           "strong air purifying qualities. This succulant"
//           "plant is known for purifying air from chemicals"
//           "found in household cleaning product. Unlike"
//           "other indoor plant Aloe keeps water in its"
//           "leavesnot the soil untill it needs it. Aloe requires"
//           "Bright sun light even though it only need very"
//           "little water."
//     },
//     {
//       "image": "${AppImages.favourite_1}",
//       "name": "Aloe vera",
//       "site": "outdoor",
//       "price": "40",
//       "height":"7.2",
//       "humadity":"72",
//       "width":"3.3",
//       "des":"Aloe Vera also known as aloe africana has"
//           "strong air purifying qualities. This succulant"
//           "plant is known for purifying air from chemicals"
//           "found in household cleaning product. Unlike"
//           "other indoor plant Aloe keeps water in its"
//           "leavesnot the soil untill it needs it. Aloe requires"
//           "Bright sun light even though it only need very"
//           "little water."
//     },
//     {
//       "image": "${AppImages.favourite_2}",
//       "name": "Flowers",
//       "site": "outdoor",
//       "price": "50",
//       "height":"7.2",
//       "humadity":"72",
//       "width":"3.3",
//       "des":"Aloe Vera also known as aloe africana has"
//           "strong air purifying qualities. This succulant"
//           "plant is known for purifying air from chemicals"
//           "found in household cleaning product. Unlike"
//           "other indoor plant Aloe keeps water in its"
//           "leavesnot the soil untill it needs it. Aloe requires"
//           "Bright sun light even though it only need very"
//           "little water."
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: AppColor.green118844,
//           centerTitle: true,
//           iconTheme: IconThemeData(color: AppColor.whiteFFFFFF),
//           leading: iswish? IconButton(onPressed: (){
//             setState(() {
//               iswish = false;
//             });
//             Navigator.pop(context);
//           }, icon: Icon(Icons.arrow_back_ios)) : null,
//           title: BoldText(
//             text: "Favourite",
//             color: AppColor.whiteFFFFFF,
//             fontweight: FontWeight.w600,
//             textsize: 20,
//           ),
//         ),
//         backgroundColor: AppColor.whiteFFFFFF,
//         body: Container(
//           width: w,
//           height: h,
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: h * 0.03,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: w * 0.03),
//                   child: InkWell(
//
//                     child: GridView.builder(
//                       shrinkWrap: true,
//                       physics: BouncingScrollPhysics(),
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           mainAxisExtent: h * 0.25,
//                           crossAxisSpacing: 10,
//                           mainAxisSpacing: 10,
//                           crossAxisCount: 2),
//                       itemCount: wishList.length,
//                       itemBuilder: (context, index) {
//                         return InkWell(
//                           onTap: (){
//                               Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailScreen(
//                                 type: wishList[index]['site'],
//                                 images: wishList[index]['image'],
//                                 desc: wishList[index]['des'],
//                                 price: int.parse(wishList[index]['price']),
//                                 name: wishList[index]['name'],
//                               )));
//                           },
//                           child: _wishListWidget(
//                             image: wishList[index]['image'],
//                             name: wishList[index]['name'],
//                             site: wishList[index]['site'],
//                             price: wishList[index]['price'],
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _wishListWidget({
//     required String name,
//     required String site,
//     required String price,
//     required String image,
//   }) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Container(
//         decoration: BoxDecoration(
//             boxShadow: [
//               BoxShadow(
//                   color: AppColor.grey544C4C.withOpacity(0.3),
//                   offset: Offset(0, 0),
//                   blurRadius: 04,
//                   spreadRadius: 2)
//             ],
//             color: AppColor.whiteFFFFFF,
//             borderRadius: BorderRadius.circular(12),
//             border: Border.all(
//               width: 1,
//               color: AppColor.greyDADADA4D.withOpacity(0.5),
//             )),
//         child: Stack(
//           children: [
//             Container(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Center(
//                       child: Image.network(
//                     image,
//                     width: w * 0.40,
//                     height: h * 0.18,
//                     fit: BoxFit.contain,
//                   )),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: w * 0.02),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             BoldText(
//                               text: name,
//                               color: AppColor.green80CA5B,
//                               fontweight: FontWeight.w600,
//                               textsize: 16,
//                             ),
//                             LightText(
//                               text: site,
//                               color: AppColor.grey4D4D4D,
//                               fontWeight: FontWeight.w600,
//                               fontSize: 13,
//                             ),
//                           ],
//                         ),
//                       ),
//                       Spacer(),
//                       Container(
//                         margin: EdgeInsets.only(top: 5),
//                         width: w * 0.16,
//                         height: h * 0.06,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(12),
//                               bottomRight: Radius.circular(12),
//                             ),
//                             color: AppColor.greyE0E0E0),
//                         child: Center(
//                             child: BoldText(
//                           text: "\$${price}",
//                           fontweight: FontWeight.bold,
//                           textsize: 20,
//                           color: AppColor.green80CA5B,
//                         )),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: h * 0.15, left: w * 0.35),
//               child: Image.asset(
//                 AppImages.heart,
//                 width: w * 0.08,
//               ),
//             )
//           ],
//         ));
//   }
// }
// bool iswish = false;

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:greenfiy/app_const/app_color.dart';
// import 'package:greenfiy/app_const/app_images.dart';
// import 'package:greenfiy/app_screen/detail_screen/detail_screen.dart';
// import 'package:greenfiy/common_widget/bold_text.dart';
// import 'package:greenfiy/common_widget/light_text.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class WishlistScreen extends StatefulWidget {
//   const WishlistScreen({super.key});
//
//   @override
//   State<WishlistScreen> createState() => _WishlistScreenState();
// }
//
// class _WishlistScreenState extends State<WishlistScreen> {
//   List<dynamic> wishList = []; // To hold wishlist items fetched from Firestore
//   bool isLoading = true; // To track loading state
//
//   // Fetch wishlist data from Firestore
//
//   Future<void> toggleWishlistItem(String itemId) async {
//     try {
//       // Assuming 'userId' is the current user's ID
//       String userId = '7L8my43JWYS9v4pfVDx7P5j9tXz2'; // Replace with actual userId
//
//       // Get the current wishlistId from the profile data
//       DocumentSnapshot profileSnapshot = await FirebaseFirestore.instance
//           .collection('users')
//           .doc(userId)
//           .collection('profile')
//           .doc('profile_data')
//           .get();
//
//       if (profileSnapshot.exists) {
//         String wishlistId = profileSnapshot['wishlistId'] ?? '';
//
//         if (wishlistId.isNotEmpty) {
//           // Check if the item is already in the wishlist
//           DocumentSnapshot itemSnapshot = await FirebaseFirestore.instance
//               .collection('users')
//               .doc(userId)
//               .collection('wishlist')
//               .doc(wishlistId)
//               .collection('items')
//               .doc(itemId)
//               .get();
//
//           if (itemSnapshot.exists) {
//             // If the item exists, remove it from the wishlist
//             await FirebaseFirestore.instance
//                 .collection('users')
//                 .doc(userId)
//                 .collection('wishlist')
//                 .doc(wishlistId)
//                 .collection('items')
//                 .doc(itemId)
//                 .delete();
//
//             // Update the local wishlist by removing the item
//             setState(() {
//               wishList.removeWhere((item) => item['id'] == itemId); // Remove item from list
//             });
//           }
//         }
//       }
//     } catch (e) {
//       print("Error toggling wishlist item: $e");
//     }
//   }
//
//
//   Future<void> fetchWishlistData() async {
//     try {
//       // Assuming 'userId' is the current user's ID
//       String userId =
//           '7L8my43JWYS9v4pfVDx7P5j9tXz2'; // Replace with actual userId
//       DocumentSnapshot profileSnapshot = await FirebaseFirestore.instance
//           .collection('users')
//           .doc(userId)
//           .collection('profile')
//           .doc(
//               'profile_data') // Assuming this is where the wishlistId is stored
//           .get();
//
//       if (profileSnapshot.exists) {
//         String wishlistId = profileSnapshot['wishlistId'] ?? '';
//
//         if (wishlistId.isNotEmpty) {
//           // Fetch the items from the wishlist collection
//           QuerySnapshot itemsSnapshot = await FirebaseFirestore.instance
//               .collection('users')
//               .doc(userId)
//               .collection('wishlist')
//               .doc(wishlistId)
//               .collection('items')
//               .get();
//
//           // Convert the documents to a list of data
//           setState(() {
//             wishList = itemsSnapshot.docs.map((doc) => doc.data()).toList();
//             isLoading = false; // Data has been loaded
//
//             print(wishList);
//           });
//         }
//       }
//     } catch (e) {
//       print("Error fetching wishlist: $e");
//       setState(() {
//         isLoading = false; // In case of error, stop loading
//       });
//     }
//   }
//
//   // Future<void> toggleWishlistItem(String itemId) async {
//   //   try {
//   //     // Assuming 'userId' is the current user's ID
//   //     String userId =
//   //         '7L8my43JWYS9v4pfVDx7P5j9tXz2'; // Replace with actual userId
//   //
//   //     // Get the current wishlistId from the profile data
//   //     DocumentSnapshot profileSnapshot = await FirebaseFirestore.instance
//   //         .collection('users')
//   //         .doc(userId)
//   //         .collection('profile')
//   //         .doc('profile_data')
//   //         .get();
//   //
//   //     if (profileSnapshot.exists) {
//   //       String wishlistId = profileSnapshot['wishlistId'] ?? '';
//   //
//   //       if (wishlistId.isNotEmpty) {
//   //         // Check if the item is already in the wishlist
//   //         DocumentSnapshot itemSnapshot = await FirebaseFirestore.instance
//   //             .collection('users')
//   //             .doc(userId)
//   //             .collection('wishlist')
//   //             .doc(wishlistId)
//   //             .collection('items')
//   //             .doc(itemId)
//   //             .get();
//   //
//   //         if (itemSnapshot.exists) {
//   //           // If the item exists, remove it from the wishlist
//   //           await FirebaseFirestore.instance
//   //               .collection('users')
//   //               .doc(userId)
//   //               .collection('wishlist')
//   //               .doc(wishlistId)
//   //               .collection('items')
//   //               .doc(itemId)
//   //               .delete();
//   //
//   //           // Update the local wishlist by removing the item
//   //           setState(() {
//   //             wishList.removeWhere((item) =>
//   //                 item['id'] == itemId); // Assuming item has an 'id' field
//   //           });
//   //         } else {
//   //           // If the item doesn't exist, add it to the wishlist
//   //           await FirebaseFirestore.instance
//   //               .collection('users')
//   //               .doc(userId)
//   //               .collection('wishlist')
//   //               .doc(wishlistId)
//   //               .collection('items')
//   //               .add({
//   //             'id': itemId, // Store the item's id or other necessary data
//   //             'name': 'Item Name',
//   //             'price': 'Item Price',
//   //             'image': 'Item Image',
//   //             // Add any other necessary fields here
//   //           });
//   //
//   //           // Update the local wishlist by adding the item
//   //           setState(() {
//   //             wishList.add({
//   //               'id': itemId,
//   //               'name': 'Item Name', // Replace with actual data
//   //               'price': 'Item Price',
//   //               'image': 'Item Image',
//   //               // Add other fields
//   //             });
//   //           });
//   //         }
//   //       }
//   //     }
//   //   } catch (e) {
//   //     print("Error toggling wishlist item: $e");
//   //   }
//   // }
//
//   @override
//   void initState() {
//     super.initState();
//     fetchWishlistData(); // Fetch wishlist data when the screen is initialized
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: AppColor.green118844,
//           centerTitle: true,
//           iconTheme: IconThemeData(color: AppColor.whiteFFFFFF),
//           title: BoldText(
//             text: "Favourite",
//             color: AppColor.whiteFFFFFF,
//             fontweight: FontWeight.w600,
//             textsize: 20,
//           ),
//         ),
//         backgroundColor: AppColor.whiteFFFFFF,
//         body: Container(
//           width: w,
//           height: h,
//           child: isLoading
//               ? Center(
//                   child:
//                       CircularProgressIndicator()) // Show loading spinner while data is being fetched
//               : SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: h * 0.03,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: w * 0.03),
//                         child: GridView.builder(
//                           shrinkWrap: true,
//                           physics: BouncingScrollPhysics(),
//                           gridDelegate:
//                               SliverGridDelegateWithFixedCrossAxisCount(
//                                   mainAxisExtent: h * 0.25,
//                                   crossAxisSpacing: 10,
//                                   mainAxisSpacing: 10,
//                                   crossAxisCount: 2),
//                           itemCount: wishList.length,
//                           itemBuilder: (context, index) {
//                             return InkWell(
//                               onDoubleTap: () async {
//                                 String itemId = wishList[index]['id'];
//
//                                 // Call the function to remove item from wishlist
//                                 await toggleWishlistItem(itemId);
//
//                                 // Show a snack bar to notify the user
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   SnackBar(
//                                     content: Text('Removed from wishlist'),
//                                     duration: Duration(seconds: 2),
//                                   ),
//                                 );
//                               },
//
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (_) => DetailScreen(
//                                         type: wishList[index]['productType'],
//                                         images: wishList[index]
//                                             ['productImages'],
//                                         desc: wishList[index]['productDesc'],
//                                         price: wishList[index]['price'],
//                                         name: wishList[index]['productName'],
//                                         width: wishList[index]['width'],
//                                         height: wishList[index]['height'],
//                                         weight: wishList[index]['weight'],
//                                       ),
//                                     ));
//                               },
//                               child: _wishListWidget(
//                                 image: wishList[index]['productImages'][0],
//                                 name: wishList[index]['productName'],
//                                 site: wishList[index]['productType'],
//                                 price: wishList[index]['price'].toString(),
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//         ),
//       ),
//     );
//   }
//
//   Widget _wishListWidget({
//     required String name,
//     required String site,
//     required String price,
//     required String image,
//   }) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Container(
//       decoration: BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//                 color: AppColor.grey544C4C.withOpacity(0.3),
//                 offset: Offset(0, 0),
//                 blurRadius: 04,
//                 spreadRadius: 2)
//           ],
//           color: AppColor.whiteFFFFFF,
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(
//             width: 1,
//             color: AppColor.greyDADADA4D.withOpacity(0.5),
//           )),
//       child: Stack(
//         children: [
//           Container(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Center(
//                     child: Image.network(
//                   image,
//                   width: w * 0.40,
//                   height: h * 0.18,
//                   fit: BoxFit.contain,
//                 )),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       padding: EdgeInsets.symmetric(horizontal: w * 0.02),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           BoldText(
//                             text: name,
//                             color: AppColor.green80CA5B,
//                             fontweight: FontWeight.w600,
//                             textsize: 16,
//                           ),
//                           LightText(
//                             text: site,
//                             color: AppColor.grey4D4D4D,
//                             fontWeight: FontWeight.w600,
//                             fontSize: 13,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Spacer(),
//                     Container(
//                       margin: EdgeInsets.only(top: 5),
//                       width: w * 0.16,
//                       height: h * 0.06,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(12),
//                             bottomRight: Radius.circular(12),
//                           ),
//                           color: AppColor.greyE0E0E0),
//                       child: Center(
//                           child: BoldText(
//                         text: "\$${price}",
//                         fontweight: FontWeight.bold,
//                         textsize: 20,
//                         color: AppColor.green80CA5B,
//                       )),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(top: h * 0.15, left: w * 0.35),
//             child: Image.asset(
//               AppImages.heart,
//               width: w * 0.08,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// bool iswish = false;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/app_const/app_images.dart';
import 'package:greenfiy/app_screen/detail_screen/detail_screen.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:greenfiy/common_widget/light_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  List<dynamic> wishList = [];
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  late User? user;// To hold wishlist items fetched from Firestore
  bool isLoading = true; // To track loading state

  // Fetch wishlist data from Firestore
  Future<void> fetchWishlistData() async {
    try {
      // Assuming 'userId' is the current user's ID
      String userId = user!.uid;
      DocumentSnapshot profileSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .collection('profile')
          .doc('profile_data') // Assuming this is where the wishlistId is stored
          .get();

      if (profileSnapshot.exists) {
        String wishlistId = profileSnapshot['wishlistId'] ?? '';

        if (wishlistId.isNotEmpty) {
          // Fetch the items from the wishlist collection
          QuerySnapshot itemsSnapshot = await FirebaseFirestore.instance
              .collection('users')
              .doc(userId)
              .collection('wishlist')
              .doc(wishlistId)
              .collection('items')
              .get();

          // Convert the documents to a list of data, including the document ID
          setState(() {
            wishList = itemsSnapshot.docs.map((doc) {
              var data = doc.data() as Map<String, dynamic>;
              data['id'] = doc.id; // Add the document's ID as 'id'
              return data;
            }).toList();
            isLoading = false; // Data has been loaded
          });

          print(wishList); // You can print the whole wishlist to check
        }
      }
    } catch (e) {
      print("Error fetching wishlist: $e");
      setState(() {
        isLoading = false; // In case of error, stop loading
      });
    }
  }

  Future<void> toggleWishlistItem(String itemId) async {
    try {
      String userId = '7L8my43JWYS9v4pfVDx7P5j9tXz2'; // Replace with actual userId

      // Get the current wishlistId from the profile data
      DocumentSnapshot profileSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .collection('profile')
          .doc('profile_data')
          .get();

      if (profileSnapshot.exists) {
        String wishlistId = profileSnapshot['wishlistId'] ?? '';

        if (wishlistId.isNotEmpty) {
          // Check if the item is already in the wishlist
          DocumentSnapshot itemSnapshot = await FirebaseFirestore.instance
              .collection('users')
              .doc(userId)
              .collection('wishlist')
              .doc(wishlistId)
              .collection('items')
              .doc(itemId)
              .get();

          if (itemSnapshot.exists) {
            // If the item exists, remove it from the wishlist
            await FirebaseFirestore.instance
                .collection('users')
                .doc(userId)
                .collection('wishlist')
                .doc(wishlistId)
                .collection('items')
                .doc(itemId)
                .delete();

            // Update the local wishlist by removing the item
            setState(() {
              wishList.removeWhere((item) => item['id'] == itemId); // Assuming item has an 'id' field
            });
          }
        }
      }
    } catch (e) {
      print("Error toggling wishlist item: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser;
    fetchWishlistData(); // Fetch wishlist data when the screen is initialized
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.green118844,
          centerTitle: true,
          iconTheme: IconThemeData(color: AppColor.whiteFFFFFF),
          title: BoldText(
            text: "Favourite",
            color: AppColor.whiteFFFFFF,
            fontweight: FontWeight.w600,
            textsize: 20,
          ),
        ),
        backgroundColor: AppColor.whiteFFFFFF,
        body: Container(
          width: w,
          height: h,
          child: isLoading
              ? Center(child: CircularProgressIndicator()) // Show loading spinner while data is being fetched
              : SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: h * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.03),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: h * 0.25,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                    ),
                    itemCount: wishList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onDoubleTap: () async {
                          String itemId = wishList[index]['id'];
                          print("This is my id of the plant: $itemId"); // Print the id here for debugging

                          // Call the function to remove item from wishlist
                          await toggleWishlistItem(itemId);

                          // Show a snack bar to notify the user
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Removed from wishlist'),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailScreen(
                                type: wishList[index]['productType'],
                                images: wishList[index]['productImages'],
                                desc: wishList[index]['productDesc'],
                                price: wishList[index]['price'],
                                name: wishList[index]['productName'],
                                width: wishList[index]['width'],
                                height: wishList[index]['height'],
                                weight: wishList[index]['weight'],
                              ),
                            ),
                          );
                        },
                        child: _wishListWidget(
                          image: wishList[index]['productImages'][0],
                          name: wishList[index]['productName'],
                          site: wishList[index]['productType'],
                          price: wishList[index]['price'].toString(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _wishListWidget({
    required String name,
    required String site,
    required String price,
    required String image,
  }) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColor.grey544C4C.withOpacity(0.3),
            offset: Offset(0, 0),
            blurRadius: 04,
            spreadRadius: 2,
          )
        ],
        color: AppColor.whiteFFFFFF,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: AppColor.greyDADADA4D.withOpacity(0.5),
        ),
      ),
      child: Stack(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.network(
                    image,
                    width: w * 0.40,
                    height: h * 0.18,
                    fit: BoxFit.contain,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          BoldText(
                            text: name,
                            color: AppColor.green80CA5B,
                            fontweight: FontWeight.w600,
                            textsize: 16,
                          ),
                          LightText(
                            text: site,
                            color: AppColor.grey4D4D4D,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: w * 0.16,
                      height: h * 0.06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        color: AppColor.greyE0E0E0,
                      ),
                      child: Center(
                        child: BoldText(
                          text: "\$${price}",
                          fontweight: FontWeight.bold,
                          textsize: 20,
                          color: AppColor.green80CA5B,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: h * 0.15, left: w * 0.35),
            child: Image.asset(
              AppImages.heart,
              width: w * 0.08,
            ),
          ),
        ],
      ),
    );
  }
}
bool iswish = false;