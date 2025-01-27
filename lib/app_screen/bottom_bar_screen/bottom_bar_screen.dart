// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:greenfiy/app_const/app_color.dart';
// import 'package:greenfiy/app_screen/cart_screen/cart_screen.dart';
// import 'package:greenfiy/app_screen/home_screen/home_screen.dart';
// import 'package:greenfiy/app_screen/profile_screen/profile_screen.dart';
// import 'package:greenfiy/app_screen/wishlist_screen/wishlist_screen.dart';
//
// class BottomBarScreen extends StatefulWidget {
//   const BottomBarScreen({super.key});
//
//   @override
//   State<BottomBarScreen> createState() => _BottomBarScreenState();
// }
//
// class _BottomBarScreenState extends State<BottomBarScreen> {
//   List screens = [
//     HomeScreen(),
//     CartScreen(),
//     WishlistScreen(),
//     ProfileScreen(),
//   ];
//
//   int selectedIndex = 0;
//
//   void selectedScreen(int index) {
//     return setState(() {
//       selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: screens[selectedIndex],
//       bottomNavigationBar: ClipRRect(
//         borderRadius: BorderRadius.only(topRight: Radius.circular(22),topLeft: Radius.circular(22)),
//         child: BottomAppBar(
//           height: 85,
//           elevation: 0,
//           color: AppColor.green80CA5B,
//           child: Container(
//
//             child: BottomNavigationBar(
//               elevation: 0,
//               items: [
//                 BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
//                 BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart), label: ""),
//                 BottomNavigationBarItem(
//                     icon: Icon(CupertinoIcons.heart), label: ""),
//                 BottomNavigationBarItem(
//                     icon: Icon(CupertinoIcons.person), label: ""),
//               ],
//               onTap: selectedScreen,
//               type: BottomNavigationBarType.fixed,
//               backgroundColor: AppColor.green80CA5B,
//               selectedItemColor: AppColor.black0000000,
//               unselectedItemColor: AppColor.whiteFFFFFF,
//             ),
//           ),
//         ),
//       )
//
//
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/app_screen/cart_screen/cart_screen.dart';
import 'package:greenfiy/app_screen/home_screen/home_screen.dart';
import 'package:greenfiy/app_screen/profile_screen/profile_screen.dart';
import 'package:greenfiy/app_screen/wishlist_screen/wishlist_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List screens = [
    HomeScreen(),
    CartScreen(),
    WishlistScreen(),
    ProfileScreen(),
  ];

  int selectedIndex = 0;

  void selectedScreen(int index) {
    return setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(22), topLeft: Radius.circular(22)),
        child: BottomAppBar(
          height: 85,
          elevation: 0,
          color: AppColor.green118844,
          child: BottomNavigationBar(
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.cart), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.heart), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person), label: ""),
            ],
            onTap: selectedScreen,
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            selectedItemColor: AppColor.green45A415,
            unselectedItemColor: AppColor.whiteFFFFFF,
          ),
        ),
      ),
    );
  }
}
