// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:greenfiy/app_const/app_color.dart';
// import 'package:greenfiy/app_const/app_images.dart';
// import 'package:greenfiy/app_screen/detail_screen/detail_screen.dart';
// import 'package:greenfiy/common_widget/bold_text.dart';
// import 'package:greenfiy/common_widget/light_text.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 5, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _tabController.dispose();
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
//           title: BoldText(
//             text: "Home",
//             color: AppColor.whiteFFFFFF,
//             fontweight: FontWeight.w600,
//             textsize: 20,
//           ),
//         ),
//         backgroundColor: AppColor.greyDADADA4D,
//         body: Column(
//           children: [
//             SizedBox(
//               height: h * 0.02,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: w * 0.05),
//               child: Container(
//                 width: w * 0.95,
//                 height: h * 0.08,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(6),
//                   color: AppColor.greenEBFDF2,
//                 ),
//                 child: Center(
//                   child: TextField(
//                     style: GoogleFonts.inter(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 16,
//                       color: AppColor.green118844,
//                     ),
//                     decoration: InputDecoration(
//                       focusedBorder: InputBorder.none,
//                       enabledBorder: InputBorder.none,
//                       errorBorder: InputBorder.none,
//                       border: InputBorder.none,
//                       prefixIcon: Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 10.0),
//                         child: Icon(
//                           CupertinoIcons.search,
//                           size: w * 0.06,
//                           color: AppColor.green118844,
//                         ),
//                       ),
//                       hintText: "Search",
//                       hintStyle: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 16,
//                         color: AppColor.green118844,
//                       ),
//                       contentPadding:
//                           EdgeInsets.only(left: w * 0.10, top: h * 0.03 / 2),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: h * 0.02,
//             ),
//             SizedBox(
//               height: h * 0.20,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: w * 0.02),
//                 child: Card(
//                   elevation: 5,
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: w * 0.03),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             LightText(
//                               text: "Sale 50%",
//                               color: AppColor.redF52121,
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             LightText(
//                               text: "A special group of aloe vera",
//                               fontSize: 14,
//                               color: AppColor.green80CA5B,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             LightText(
//                               text:
//                                   "Amet minim mollit non deserunt \nullamco est sit aliqua dolor do \namet sint. Velit officia consequat\n duis enim velit mollit. ",
//                               fontSize: 11,
//                               fontWeight: FontWeight.w600,
//                             ),
//                             Row(
//                               children: [
//                                 LightText(
//                                   text: "Price ",
//                                   color: AppColor.green80CA5B,
//                                   fontSize: 16,
//                                 ),
//                                 Text(
//                                   "100\$ ",
//                                   style: TextStyle(
//                                     decorationThickness: 3,
//                                     decoration: TextDecoration.lineThrough,
//                                     decorationColor: AppColor.redF52121,
//                                     color: AppColor.green80CA5B,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 Text(
//                                   "50\$ ",
//                                   style: TextStyle(
//                                     color: AppColor.green80CA5B,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         width: w * 0.03,
//                       ),
//                       Image.asset(
//                         AppImages.slider_image,
//                         width: w * 0.30,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: h * 0.02,
//             ),
//             TabBar(
//               controller: _tabController,
//               isScrollable: true,
//               indicator: BoxDecoration(),
//               labelStyle: GoogleFonts.montserrat(
//                   fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
//               labelColor: AppColor.green118844,
//               unselectedLabelColor: AppColor.grey4D4D4D,
//               tabs: const [
//                 Tab(text: "All"),
//                 Tab(text: "Indoor"),
//                 Tab(text: "Outdoor"),
//                 Tab(text: "Garden"),
//                 Tab(text: "Office"),
//               ],
//             ),
//             Expanded(
//               child: TabBarView(
//                 controller: _tabController,
//                 children: [
//                   // All tab
//                   Column(
//                     children: [
//                       SizedBox(
//                         height: 250,
//                         child: ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           itemExtent: 250,
//                           itemCount: plants['All']?.length ?? 0,
//                           itemBuilder: (context, index) {
//                             var plant =
//                                 plants['All']![index]; // Access 'All' category
//                             return InkWell(
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => DetailScreen(
//                                               type: plant['type'],
//                                               desc: plant['des'],
//                                               image: plant['image'],
//                                               name: plant['name'],
//                                               price: int.parse(plant['price']),
//                                             )));
//                               },
//                               child: _wishListWidget(
//                                 name: plant['name'],
//                                 site: plant['type'],
//                                 price: plant['price'],
//                                 image: plant['image'],
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   // Indoor tab
//                   Column(
//                     children: [
//                       SizedBox(
//                         height: 250,
//                         child: ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           itemExtent: 250,
//                           itemCount: plants['Indoor']?.length ?? 0,
//                           itemBuilder: (context, index) {
//                             var indoor = plants['Indoor']![index];
//                             return InkWell(
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => DetailScreen(
//                                               price: int.parse(indoor['price']),
//                                               name: indoor['name'],
//                                               image: indoor['image'],
//                                               desc: indoor['des'],
//                                               type: "indoor",
//                                             )));
//                               },
//                               child: _wishListWidget(
//                                 name: indoor['name'],
//                                 site: "indoor",
//                                 price: indoor['price'],
//                                 image: indoor['image'],
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   Column(
//                     children: [
//                       Container(
//                         height: 250,
//                         child: ListView.builder(
//                           primary: true,
//                           shrinkWrap: true,
//                           scrollDirection: Axis.horizontal,
//                           itemExtent: 250,
//                           physics: AlwaysScrollableScrollPhysics(),
//                           itemCount: plants['Out']?.length ?? 0,
//                           itemBuilder: (context, index) {
//                             var plant = plants['Out']![index];
//                             return InkWell(
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => DetailScreen(
//                                               type: "outdoor",
//                                               desc: plant['des'],
//                                               image: plant['image'],
//                                               price: int.parse(plant['price']),
//                                               name: plant['name'],
//                                             )));
//                               },
//                               child: _wishListWidget(
//                                 name: plant['name'],
//                                 site: "outdoor",
//                                 price: plant['price'],
//                                 image: plant['image'],
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   // Garden tab
//                   Column(
//                     children: [
//                       Container(
//                         height: 250,
//                         child: ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           itemExtent: 250,
//                           itemCount: plants['Garden']?.length ?? 0,
//                           itemBuilder: (context, index) {
//                             var plant = plants['Garden']
//                                 [index]; // Access 'Garden' category
//                             return InkWell(
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => DetailScreen(
//                                               desc: plant['des'],
//                                               price: int.parse(plant['price']),
//                                               image: plant['image'],
//                                               name: plant['name'],
//                                               type: "Garden",
//                                             )));
//                               },
//                               child: _wishListWidget(
//                                 name: plant['name'],
//                                 site: "Garden",
//                                 price: plant['price'],
//                                 image: plant['image'],
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   // Office tab
//                   Column(
//                     children: [
//                       SizedBox(
//                         height: 250,
//                         child: ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           itemExtent: 250,
//                           itemCount: plants['Office']?.length ?? 0,
//                           itemBuilder: (context, index) {
//                             var plant = plants['Office']![index];
//                             return InkWell(
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => DetailScreen(
//                                               desc: plant['des'],
//                                               type: "Office",
//                                               name: plant['name'],
//                                               image: plant['image'],
//                                               price: int.parse(plant['price']),
//                                             )));
//                               },
//                               child: _wishListWidget(
//                                 name: plant['name'],
//                                 site: "Office",
//                                 price: plant['price'],
//                                 image: plant['image'],
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
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
//         margin: EdgeInsets.only(top: 10, left: 20, bottom: 5),
//         decoration: BoxDecoration(
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.grey.shade500,
//                   offset: Offset(3, 3),
//                   blurRadius: 5,
//                   spreadRadius: 1)
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
//                       child: Image.asset(
//                     image,
//                     width: w * 0.40,
//                     height: h * 0.23,
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
//           ],
//         ));
//   }
// }
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:greenfiy/app_const/app_color.dart';
// import 'package:greenfiy/app_const/app_images.dart';
// import 'package:greenfiy/app_screen/detail_screen/detail_screen.dart';
// import 'package:greenfiy/common_widget/bold_text.dart';
// import 'package:greenfiy/common_widget/light_text.dart';
// import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   // Plant categories (used in TabBar)
//   Map<String, List<Map<String, dynamic>>> plants = {
//     'All': [],
//     'indoor': [],
//     'outdoor': [],
//     'garden': [],
//     'office': [],
//   };
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 5, vsync: this);
//     fetchPlantsData(); // Fetch the plants data
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _tabController.dispose();
//   }
//
//   // Function to fetch data from Firestore
//   void fetchPlantsData() async {
//     try {
//       // Fetching all plant categories (All, Indoor, Outdoor, Garden, Office)
//       final categories = ['All', 'indoor', 'outdoor', 'garden', 'Office'];
//
//       for (String category in categories) {
//         var result = await FirebaseFirestore.instance
//             .collection('plants')
//             .doc(category)
//             .collection('items')
//             .get();
//
//         setState(() {
//           print("Data of the plants $plants" );
//           plants[category] = result.docs
//               .map((doc) => doc.data() as Map<String, dynamic>)
//               .toList();
//         });
//       }
//     } catch (e) {
//       print("Error fetching data: $e");
//     }
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
//           title: BoldText(
//             text: "Home",
//             color: AppColor.whiteFFFFFF,
//             fontweight: FontWeight.w600,
//             textsize: 20,
//           ),
//         ),
//         backgroundColor: AppColor.greyDADADA4D,
//         body: Column(
//           children: [
//             SizedBox(height: h * 0.02),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: w * 0.05),
//               child: Container(
//                 width: w * 0.95,
//                 height: h * 0.08,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(6),
//                   color: AppColor.greenEBFDF2,
//                 ),
//                 child: Center(
//                   child: TextField(
//                     style: GoogleFonts.inter(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 16,
//                       color: AppColor.green118844,
//                     ),
//                     decoration: InputDecoration(
//                       focusedBorder: InputBorder.none,
//                       enabledBorder: InputBorder.none,
//                       errorBorder: InputBorder.none,
//                       border: InputBorder.none,
//                       prefixIcon: Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 10.0),
//                         child: Icon(
//                           CupertinoIcons.search,
//                           size: w * 0.06,
//                           color: AppColor.green118844,
//                         ),
//                       ),
//                       hintText: "Search",
//                       hintStyle: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 16,
//                         color: AppColor.green118844,
//                       ),
//                       contentPadding: EdgeInsets.only(left: w * 0.10, top: h * 0.03 / 2),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: h * 0.02),
//             TabBar(
//               controller: _tabController,
//               isScrollable: true,
//               indicator: BoxDecoration(),
//               labelStyle: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
//               labelColor: AppColor.green118844,
//               unselectedLabelColor: AppColor.grey4D4D4D,
//               tabs: const [
//                 Tab(text: "All"),
//                 Tab(text: "Indoor"),
//                 Tab(text: "Outdoor"),
//                 Tab(text: "Garden"),
//                 Tab(text: "Office"),
//               ],
//             ),
//             Expanded(
//               child: TabBarView(
//                 controller: _tabController,
//                 children: [
//                   // All tab
//                   _buildTabContent('All'),
//
//                   // Indoor tab
//                   _buildTabContent('indoor'),
//
//                   // Outdoor tab
//                   _buildTabContent('outdoor'),
//
//                   // Garden tab
//                   _buildTabContent('garden'),
//
//                   // Office tab
//                   _buildTabContent('Office'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Function to build tab content dynamically based on category
//   Widget _buildTabContent(String category) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//
//     return Column(
//       children: [
//         SizedBox(
//           height: 250,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemExtent: 250,
//             itemCount: plants[category]?.length ?? 0,
//             itemBuilder: (context, index) {
//               var plant = plants[category]![index]; // Access category data
//               return InkWell(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => DetailScreen(
//                         price: int.parse(plant['price']),
//                         name: plant['name'],
//                         images: plant['image'],
//                         desc: plant['des'],
//                         type: category,
//                         height: plant['height'],
//                         width: plant['width'],
//                         weight: plant['weight'],
//                       ),
//                     ),
//                   );
//                 },
//                 child: _wishListWidget(
//                   name: plant['name'],
//                   site: category,
//                   price: plant['price'],
//                   image: plant['image'],
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
//
//   // Widget to display individual plant item
//   Widget _wishListWidget({
//     required String name,
//     required String site,
//     required String price,
//     required String image,
//   }) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//
//     return Container(
//       margin: EdgeInsets.only(top: 10, left: 20, bottom: 5),
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//               color: Colors.grey.shade500,
//               offset: Offset(3, 3),
//               blurRadius: 5,
//               spreadRadius: 1),
//         ],
//         color: AppColor.whiteFFFFFF,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//           width: 1,
//           color: AppColor.greyDADADA4D.withOpacity(0.5),
//         ),
//       ),
//       child: Stack(
//         children: [
//           Container(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Center(
//                     child: Image.network(
//                       image,
//                       width: w * 0.40,
//                       height: h * 0.23,
//                       fit: BoxFit.contain,
//                     )),
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
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(12),
//                           bottomRight: Radius.circular(12),
//                         ),
//                         color: AppColor.greyE0E0E0,
//                       ),
//                       child: Center(
//                         child: BoldText(
//                           text: "\$${price}",
//                           fontweight: FontWeight.bold,
//                           textsize: 20,
//                           color: AppColor.green80CA5B,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:greenfiy/app_const/app_color.dart';
// import 'package:greenfiy/app_const/app_images.dart';
// import 'package:greenfiy/app_screen/detail_screen/detail_screen.dart';
// import 'package:greenfiy/common_widget/bold_text.dart';
// import 'package:greenfiy/common_widget/light_text.dart';
// import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   // Plant categories (used in TabBar)
//   Map<String, List<Map<String, dynamic>>> plants = {
//     'All': [],
//     'indoor': [],
//     'outdoor': [],
//     'garden': [],
//     'Office': [],
//   };
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 5, vsync: this);
//     fetchPlantsData(); // Fetch the plants data
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _tabController.dispose();
//   }
//
//   // Function to fetch data from Firestore
//   void fetchPlantsData() async {
//     try {
//       // Fetching all plant categories (All, Indoor, Outdoor, Garden, Office)
//       final categories = ['All', 'indoor', 'outdoor', 'garden', 'Office'];
//
//       for (String category in categories) {
//         var result = await FirebaseFirestore.instance
//             .collection('plants')
//             .doc(category)
//             .collection('items')
//             .get();
//
//         setState(() {
//
//
//           // Assign data to the category in the plants map
//           plants[category] = result.docs
//               .map((doc) {
//
//
//             return doc.data() as Map<String, dynamic>;
//           })
//               .toList();
//
//         });
//       }
//     } catch (e) {
//       print("Error fetching data: $e");
//     }
//   }
//
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
//           title: BoldText(
//             text: "Home",
//             color: AppColor.whiteFFFFFF,
//             fontweight: FontWeight.w600,
//             textsize: 20,
//           ),
//         ),
//         backgroundColor: AppColor.greyDADADA4D,
//         body: Column(
//           children: [
//             SizedBox(height: h * 0.02),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: w * 0.05),
//               child: Container(
//                 width: w * 0.95,
//                 height: h * 0.08,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(6),
//                   color: AppColor.greenEBFDF2,
//                 ),
//                 child: Center(
//                   child: TextField(
//                     style: GoogleFonts.inter(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 16,
//                       color: AppColor.green118844,
//                     ),
//                     decoration: InputDecoration(
//                       focusedBorder: InputBorder.none,
//                       enabledBorder: InputBorder.none,
//                       errorBorder: InputBorder.none,
//                       border: InputBorder.none,
//                       prefixIcon: Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 10.0),
//                         child: Icon(
//                           CupertinoIcons.search,
//                           size: w * 0.06,
//                           color: AppColor.green118844,
//                         ),
//                       ),
//                       hintText: "Search",
//                       hintStyle: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 16,
//                         color: AppColor.green118844,
//                       ),
//                       contentPadding: EdgeInsets.only(left: w * 0.10, top: h * 0.03 / 2),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: h * 0.02),
//             TabBar(
//               controller: _tabController,
//               isScrollable: true,
//               indicator: BoxDecoration(),
//               labelStyle: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
//               labelColor: AppColor.green118844,
//               unselectedLabelColor: AppColor.grey4D4D4D,
//               tabs: const [
//                 Tab(text: "All"),
//                 Tab(text: "Indoor"),
//                 Tab(text: "Outdoor"),
//                 Tab(text: "Garden"),
//                 Tab(text: "Office"),
//               ],
//             ),
//             Expanded(
//               child: TabBarView(
//                 controller: _tabController,
//                 children: [
//
// _buildTabContent('All'),
//                   // Indoor tab
//                   _buildTabContent('indoor'),
//
//                   // Outdoor tab
//                   _buildTabContent('outdoor'),
//
//                   // Garden tab
//                   _buildTabContent('garden'),
//
//                   // Office tab
//                   _buildTabContent('Office'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Function to build tab content dynamically based on category
//   Widget _buildTabContent(String category) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//
//     return Column(
//       children: [
//         SizedBox(
//           height: 250,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemExtent: 250,
//             itemCount: plants[category]?.length ?? 0,
//             itemBuilder: (context, index) {
//               var plant = plants[category]![index]; // Access category data
//               return InkWell(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => DetailScreen(
//                         price: int.parse(plant['price']),
//                         name: plant['name'],
//                         images: plant['image'],
//                         desc: plant['des'],
//                         type: category,
//                         height: plant['height'],
//                         width: plant['width'],
//                         weight: plant['weight'],
//                       ),
//                     ),
//                   );
//                 },
//                 child: _wishListWidget(
//                   name: plant['name'],
//                   site: category,
//                   price: plant['price'],
//                   image: plant['image'],
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
//
//   // Widget to display individual plant item
//   Widget _wishListWidget({
//     required String name,
//     required String site,
//     required String price,
//     required List<dynamic> image,
//
//
//   }) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//
//     // Placeholder image URL in case the image is not loaded
//     String validImageUrl = image.isNotEmpty ? image[0] : 'https://via.placeholder.com/150'; // Default image URL
//
//     return Container(
//       margin: EdgeInsets.only(top: 10, left: 20, bottom: 5),
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//               color: Colors.grey.shade500,
//               offset: Offset(3, 3),
//               blurRadius: 5,
//               spreadRadius: 1),
//         ],
//         color: AppColor.whiteFFFFFF,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//           width: 1,
//           color: AppColor.greyDADADA4D.withOpacity(0.5),
//         ),
//       ),
//       child: Stack(
//         children: [
//           Container(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Center(
//                   child: image.isNotEmpty
//                       ? Image.network(
//                     validImageUrl,
//                     width: w * 0.40,
//                     height: h * 0.23,
//                     fit: BoxFit.contain,
//                     loadingBuilder: (context, child, loadingProgress) {
//                       if (loadingProgress == null) {
//                         return child;
//                       } else {
//                         return Center(
//                           child: CircularProgressIndicator(
//                             value: loadingProgress.expectedTotalBytes != null
//                                 ? loadingProgress.cumulativeBytesLoaded /
//                                 (loadingProgress.expectedTotalBytes ?? 1)
//                                 : null,
//                           ),
//                         );
//                       }
//                     },
//                   )
//                       : Image.asset(
//                     'assets/images/placeholder_image.png', // Default local image
//                     width: w * 0.40,
//                     height: h * 0.23,
//                     fit: BoxFit.contain,
//                   ),
//                 ),
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
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(12),
//                           bottomRight: Radius.circular(12),
//                         ),
//                         color: AppColor.greyE0E0E0,
//                       ),
//                       child: Center(
//                         child: BoldText(
//                           text: "\$${price}",
//                           fontweight: FontWeight.bold,
//                           textsize: 20,
//                           color: AppColor.green80CA5B,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/app_screen/bottom_bar_screen/bottom_bar_screen.dart';
import 'package:greenfiy/app_screen/detail_screen/detail_screen.dart';
import 'package:greenfiy/app_screen/garden_kit_screen/garden_kit_screen.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:greenfiy/common_widget/light_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../app_const/app_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Plant categories (used in TabBar)
  Map<String, List<Map<String, dynamic>>> plants = {
    'All': [],
    'indoor': [],
    'outdoor': [],
    'garden': [],
    'Office': [],
  };

  @override
  void initState() {
    super.initState();
    heart = true;
    _tabController = TabController(length: 5, vsync: this);
    fetchPlantsData(); // Fetch the plants data
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  // Function to fetch data from Firestore
  void fetchPlantsData() async {
    try {
      final categories = ['indoor', 'outdoor', 'garden', 'Office'];
      List<Map<String, dynamic>> allPlants = [];

      // Loop through each category to fetch data from Firestore
      for (String category in categories) {
        print('Fetching data for category: $category'); // Debug print

        var result = await FirebaseFirestore.instance
            .collection('plants')
            .doc(category)
            .collection('items')
            .get();

        if (result.docs.isNotEmpty) {
          print(
              'Found ${result.docs.length} items in category: $category'); // Debug print

          setState(() {
            allPlants.addAll(result.docs
                .map((doc) => doc.data() as Map<String, dynamic>)
                .toList());
            plants['All'] = allPlants;

            plants[category] = result.docs
                .map((doc) => doc.data() as Map<String, dynamic>)
                .toList();
          });
        } else {
          print('No items found in category: $category'); // Debug print
          setState(() {
            plants[category] = [];
          });
        }
      }

      print(
          'All products length is ${allPlants.length} $allPlants'); // Debug print to check the combined list
    } catch (e) {
      print("Error fetching data: $e");
    }
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
          title: BoldText(
            text: "Home",
            color: AppColor.whiteFFFFFF,
            fontweight: FontWeight.w600,
            textsize: 20,
          ),
        ),
        backgroundColor: AppColor.greyDADADA4D,
        body: Column(
          children: [
            SizedBox(height: h * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.05),
              child: Container(
                width: w * 0.95,
                height: h * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColor.greenEBFDF2,
                ),
                child: Center(
                  child: TextField(
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColor.green118844,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(
                          CupertinoIcons.search,
                          size: w * 0.06,
                          color: AppColor.green118844,
                        ),
                      ),
                      hintText: "Search",
                      hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColor.green118844,
                      ),
                      contentPadding:
                          EdgeInsets.only(left: w * 0.10, top: h * 0.03 / 2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: h * 0.02),
            SizedBox(
              height: h * 0.20,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.03),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LightText(
                              text: "Sale 50%",
                              color: AppColor.redF52121,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            LightText(
                              text: "A special group of aloe vera",
                              fontSize: 14,
                              color: AppColor.green80CA5B,
                              fontWeight: FontWeight.bold,
                            ),
                            LightText(
                              text:
                                  "Amet minim mollit non deserunt \nullamco est sit aliqua dolor do \namet sint. Velit officia consequat\n duis enim velit mollit. ",
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                            Row(
                              children: [
                                LightText(
                                  text: "Price ",
                                  color: AppColor.green80CA5B,
                                  fontSize: 16,
                                ),
                                Text(
                                  "100\$ ",
                                  style: TextStyle(
                                    decorationThickness: 3,
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: AppColor.redF52121,
                                    color: AppColor.green80CA5B,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "50\$ ",
                                  style: TextStyle(
                                    color: AppColor.green80CA5B,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      Image.asset(
                        AppImages.slider_image,
                        width: w * 0.30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            TabBar(
              controller: _tabController,
              isScrollable: true,
              indicator: BoxDecoration(),
              labelStyle: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
              labelColor: AppColor.green118844,
              unselectedLabelColor: AppColor.grey4D4D4D,
              tabs: const [
                Tab(text: "All"),
                Tab(text: "Indoor"),
                Tab(text: "Outdoor"),
                Tab(text: "Garden"),
                Tab(text: "Office"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildTabContent('All'),
                  _buildTabContent('indoor'),
                  _buildTabContent('outdoor'),
                  _buildTabContent('garden'),
                  _buildTabContent('Office'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(String category) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemExtent: 250,
            itemCount: plants[category]?.length ?? 0,
            itemBuilder: (context, index) {
              var plant = plants[category]![index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        price: int.parse(plant['price']),
                        name: plant['name'],
                        images: plant["image"],
                        desc: plant['des'],
                        type: category,
                        height: plant['height'],
                        width: plant['width'],
                        weight: plant['weight'],
                      ),
                    ),
                  );
                },
                child: _wishListWidget(
                  name: plant['name'],
                  site: category,
                  price: plant['price'],
                  image: plant['image'],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  // Widget to display individual plant item
  Widget _wishListWidget({
    required String name,
    required String site,
    required String price,
    required List<dynamic> image,
  }) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    // Placeholder image URL in case the image is not loaded
    String validImageUrl = image.isNotEmpty
        ? image[0]
        : 'https://via.placeholder.com/150'; // Default image URL

    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, bottom: 5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(3, 3),
              blurRadius: 5,
              spreadRadius: 1),
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
                  child: image.isNotEmpty
                      ? Image.network(
                          validImageUrl,
                          width: w * 0.40,
                          height: h * 0.23,
                          fit: BoxFit.contain,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            } else {
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          (loadingProgress.expectedTotalBytes ??
                                              1)
                                      : null,
                                ),
                              );
                            }
                          },
                        )
                      : Image.asset(
                          'assets/images/favourite_1.png',
                          width: w * 0.40,
                          height: h * 0.23,
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
                          // borderRadius: BorderRadius.only(
                          //   topLeft: Radius.circular(12),
                          //   bottomRight: Radius.circular(12),
                          // ),
                          // color: AppColor.greyE0E0E0,
                          ),
                      child: Center(
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>GardenKitScreen()));
                              },
                              icon: Icon(
                                Icons.shopping_bag,
                              ))),
                    ),
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
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: w*0.02),
            width: w*0.10,
            height: h*0.05,
            child: Icon(CupertinoIcons.heart),
          )
        ],
      ),
    );
  }
}

