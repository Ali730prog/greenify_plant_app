import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/app_const/app_images.dart';
import 'package:animate_do/animate_do.dart';

import '../select_login_sign_up/select_login_sign_up.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => SelectLoginSignUp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery
        .of(context)
        .size
        .width;
    double h = MediaQuery
        .of(context)
        .size
        .height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.green118844,
        body: Container(
          width: w,
          height: h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ZoomIn(
                  duration: Duration(
                      seconds: 1
                  ),
                  child: Image.asset(AppImages.splash_image)),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    speed: Duration(milliseconds: 100),
                    'Greenify', textStyle: GoogleFonts.montserrat(
                      fontSize: 64,
                      fontWeight: FontWeight.w700,
                      color: AppColor.whiteFFFFFF),),
                ],
              ),

              SizedBox(
                height: h * 0.01,
              ),
              BounceInRight(
                duration: Duration(seconds: 2),
                child: Text(
                  "BY: AHMAD SHEHZAD",
                  style: GoogleFonts.aclonica(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black0000000),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
