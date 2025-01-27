import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_screen/cart_screen/cart_screen.dart';
import 'package:greenfiy/app_screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:greenfiy/app_screen/garden_kit_screen/garden_kit_screen.dart';
import 'package:greenfiy/app_screen/wishlist_screen/wishlist_screen.dart';
import 'package:greenfiy/common_widget/common_button.dart';
import 'package:greenfiy/common_widget/light_text.dart';
import 'package:greenfiy/common_widget/profile_text_field.dart';
import 'package:image_picker/image_picker.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:circular_progress_stack/circular_progress_stack.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                  width: w * 0.40,
                  height: h * 0.24,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AnimatedStackCircularProgressBar(
                        size: 130,
                        progressStrokeWidth: 5,
                        backStrokeWidth: 5,
                        startAngle: 0,
                        backColor: const Color(0xffD7DEE7),
                        bars: [
                          AnimatedBarValue(
                            barColor: AppColor.green118844,
                            barValues: 100,
                            fullProgressColors: Colors.red,
                          ),
                        ],
                      ),
                      // Profile Image
                      Positioned(
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/AliHasanain.jpg")
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
                  text: "Ahmad Shehzad",
                  color: AppColor.black0000000,
                  textsize: 19,
                  fontweight: FontWeight.w500,
                ),
                BoldText(
                  text: "Sargodha",
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
                  text: 'About Us',
                ),
                _buildsectionwidget(
                    text: 'Garden Kit',
                    ontap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => GardenKitScreen()));
                    }),
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
