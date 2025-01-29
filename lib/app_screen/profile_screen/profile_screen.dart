import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_screen/cart_screen/cart_screen.dart';
import 'package:greenfiy/app_screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:greenfiy/app_screen/garden_kit_screen/garden_kit_screen.dart';
import 'package:greenfiy/app_screen/order_complete_screen/order_complete_screen.dart';
import 'package:greenfiy/app_screen/order_placed_screen/order_placed_screen.dart';
import 'package:greenfiy/app_screen/wishlist_screen/wishlist_screen.dart';
import 'package:greenfiy/common_widget/common_button.dart';
import 'package:greenfiy/common_widget/light_text.dart';
import 'package:greenfiy/common_widget/profile_text_field.dart';
import 'package:image_picker/image_picker.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:circular_progress_stack/circular_progress_stack.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  FirebaseAuth _auth = FirebaseAuth.instance;

  void _logout() async {
    try {
      await _auth.signOut();
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
            (route) => false,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error signing out. Please try again."),
      ));
    }}
  String newName = "";
  String newCity = "";
  _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Load the saved values from SharedPreferences
    String email = prefs.getString('email') ?? "AHMAD SHEHZAD";
    String name = prefs.getString('name') ?? "AHMADSHEHZAD@gmail.com";
    String hobby = prefs.getString('hobby') ?? "Gardening";
    String dob = prefs.getString('dob') ?? "23/05/2000";
    String country = prefs.getString('country') ?? 'Pakistan';
    print("This is my email $email");
    print("This is my name $name");
    print("This is my hobby $hobby");
    print("This is my dob $dob");
    print("This is my country $country");


    setState(() {
      newName = name;
      newCity = country;
      print("This is my $name");
      print("This is my $name");
    });
  }
@override
  void initState() {
    super.initState();

    _loadData();
  }


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.green118844,
          centerTitle: true,
          title: const SizedBox(),
          iconTheme: IconThemeData(color: AppColor.whiteFFFFFF),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
          flexibleSpace: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: BoldText(
                text: "Profile",
                color: AppColor.whiteFFFFFF,
                fontweight: FontWeight.w600,
                textsize: 20,
              ),
            ),
          ),
        ),

        backgroundColor: AppColor.whiteFFFFFF,
        body: Container(
          width: w,
          height: h,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: w * 0.30,
                  height: h * 0.18,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [

                      // Profile Image
                      Positioned(
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/profile2.jpg")
                                  as ImageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                BoldText(
                  // text: "",
                  text: newName,
                  color: AppColor.black0000000,
                  textsize: 19,
                  fontweight: FontWeight.w500,
                ),
                BoldText(

                  text: newCity,
                  // text: "Sargodha",
                  color: AppColor.grey666666,
                  textsize: 15,
                  fontweight: FontWeight.w500,
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                _buildsectionwidget(
                    text: 'Edit Profile',
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => EditProfileScreen()));
                    }),
                _buildsectionwidget(
                    text: 'My Cart',
                    ontap: () {
                      setState(() {
                        iscart = true;
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => CartScreen()));
                    }),
                _buildsectionwidget(
                    text: 'Wishlist',
                    ontap: () {
                      setState(() {
                        iswish = true;
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => WishlistScreen()));
                    }),
                _buildsectionwidget(
                  ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderCompleteScreen()));
                  },
                  text: 'My Order',
                ),
                _buildsectionwidget(
                    text: 'Garden Kit',
                    ontap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => GardenKitScreen()));
                    }), _buildsectionwidget(
                    text: 'Log Out',
                    ontap: _logout),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildsectionwidget({required String text, VoidCallback? ontap}) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        if (ontap != null) {
          ontap();
        }
      },
      child: Column(
        children: [
          Container(
              width: w,
              height: h * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                    width: 1, color: AppColor.greyDADADA4D.withOpacity(0.5)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                child: Row(
                  children: [
                    Container(
                      width: w * 0.10,
                      height: h * 0.03,
                      decoration: BoxDecoration(
                          color: AppColor.green118844, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: w * 0.05,
                    ),
                    LightText(
                      text: text,
                      color: AppColor.black0000000,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppColor.green118844,
                      size: 23,
                    )
                  ],
                ),
              )),
          SizedBox(
            height: h * 0.02,
          )
        ],
      ),
    );
  }
}
