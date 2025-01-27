import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/app_const/app_images.dart';
import 'package:greenfiy/app_screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:greenfiy/app_screen/home_screen/home_screen.dart';
import 'package:greenfiy/app_screen/sign_up_screen/sign_up_screen.dart';
import 'package:greenfiy/app_screen/splash_screen/splash_screen.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:greenfiy/common_widget/common_button.dart';
import 'package:greenfiy/common_widget/common_textfield.dart';
import 'package:greenfiy/common_widget/light_text.dart';

import '../bottom_bar_screen/bottom_bar_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteFFFFFF,
        body: Container(
          width: w,
          height: h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    AppImages.leaves_image,
                    width: w,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                BoldText(
                  text: "Login",
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                LightText(
                  text: "Log in to your account",
                  color: AppColor.grey535252,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                CommonTextField(
                  hintText: "Enter Your Email",
                  prefixImage: Icon(Icons.mail),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                CommonTextField(
                  isPassword: true,
                  hintText: "Enter Your Password",
                  prefixImage: Icon(Icons.key_sharp),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isChecked = !isChecked;
                              });
                            },
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green, width: 2),
                                color: isChecked
                                    ? Colors.green
                                    : Colors.transparent,
                              ),
                              child: isChecked
                                  ? Icon(Icons.check,
                                      color: Colors.white, size: 20)
                                  : null,
                            ),
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                              color: AppColor.grey535252,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: AppColor.grey535252,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.04),
                  child: CommonButton(
                    ontap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const BottomBarScreen()),
                            (Route<dynamic> route) => false,
                      );
                    },
                    text: 'Login',
                  ),


                  // ontap: () {
                      //   Navigator.popUntil(context, (route) {
                      //     return HomeScreen();
                      //   },);
                      //   Navigator.pushReplacement(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (_) => BottomBarScreen()));
                      // },
                      // text: "Login"),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: TextStyle(
                          color: AppColor.grey535252,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SignUpScreen()));
                          },
                          child: Text(
                            "Sign Up ",
                            style: TextStyle(
                              color: AppColor.green118844,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                          alignment: Alignment.topLeft,
                          decoration: BoxDecoration(
                            color: AppColor.green118844,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          width: w * 0.30,
                          height: 0.04 * h,
                          child: Center(
                            child: Text(
                              "Back",
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: AppColor.whiteFFFFFF,
                              ),
                            ),
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
