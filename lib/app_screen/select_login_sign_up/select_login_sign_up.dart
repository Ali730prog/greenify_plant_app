import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/app_const/app_images.dart';
import 'package:greenfiy/app_screen/login_screen/login_screen.dart';
import 'package:greenfiy/app_screen/sign_up_screen/sign_up_screen.dart';
import 'package:greenfiy/common_widget/common_button.dart';

class SelectLoginSignUp extends StatefulWidget {
  const SelectLoginSignUp({super.key});

  @override
  State<SelectLoginSignUp> createState() => _SelectLoginSignUpState();
}

class _SelectLoginSignUpState extends State<SelectLoginSignUp> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteFFFFFF,
        body: Container(
          width: w,
          height: h,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: h * 0.04),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.06),
                  child: Text(
                    textAlign: TextAlign.start,
                    "The Best App",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 35,
                        color: AppColor.green184A2C),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.06),
                  child: Text(
                    textAlign: TextAlign.start,
                    "For your Plant",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 35,
                        color: AppColor.green184A2C),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Center(
                    child: Stack(
                  children: [
                    Container(
                      child: Center(
                        child: Image.asset(
                          AppImages.login_plant,
                          height: h * 0.45,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: h * 0.30,
                        ),
                        Container(
                          width: w,
                          height: h * 0.15,
                          decoration:
                              BoxDecoration(color: AppColor.whiteFFFFFF),
                          child:  Center(
                            child: Text(
                              'Greenify',
                              style: GoogleFonts.montserrat(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.black0000000),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                )),
                // Center(
                //   child: Text(
                //     'Greenify',
                //     style: GoogleFonts.montserrat(
                //         fontSize: 48,
                //         fontWeight: FontWeight.bold,
                //         color: AppColor.black0000000),
                //   ),
                // ),
                SizedBox(
                  height: h * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: CommonButton(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => LoginScreen()));
                      },
                      text: "Login"),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: CommonButton(
                      color: AppColor.whiteFFFFFF,
                      textColor: AppColor.green118844,
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      text: "Create An Account"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
