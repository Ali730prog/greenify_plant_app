// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:greenfiy/common_widget/common_button.dart';
// import 'package:greenfiy/common_widget/profile_text_field.dart';
// import 'package:greenfiy/app_const/app_color.dart';
// import 'package:greenfiy/common_widget/bold_text.dart';
//
// class OrderFormScreen extends StatefulWidget {
//   const OrderFormScreen({super.key});
//
//   @override
//   State<OrderFormScreen> createState() => _OrderFormScreenState();
// }
//
// class _OrderFormScreenState extends State<OrderFormScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: AppColor.green118844,
//           centerTitle: true,
//           title: const SizedBox(),
//           iconTheme: IconThemeData(color: AppColor.whiteFFFFFF),
//           leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: Icon(Icons.arrow_back_ios)),
//           flexibleSpace: Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 5),
//               child: BoldText(
//                 text: "Edit Profile",
//                 color: AppColor.whiteFFFFFF,
//                 fontweight: FontWeight.w600,
//                 textsize: 20,
//               ),
//             ),
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
//
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: w * 0.05),
//                   child: Align(
//                     alignment: Alignment.topLeft,
//                     child: BoldText(
//                       text: "Name",
//                       color: AppColor.black0000000,
//                       textsize: 19,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: h * 0.005,
//                 ),
//                 CommonProflleTextField(
//                   hintText: "AHMAD SHEHZAD",
//                 ),
//                 SizedBox(
//                   height: h * 0.02,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: w * 0.05),
//                   child: Align(
//                     alignment: Alignment.topLeft,
//                     child: BoldText(
//                       text: "Email",
//                       color: AppColor.black0000000,
//                       textsize: 19,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: h * 0.005,
//                 ),
//                 CommonProflleTextField(
//                   hintText: "AHMADSHEHZAD@gmail.com",
//                 ),
//                 SizedBox(
//                   height: h * 0.02,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: w * 0.05),
//                   child: Align(
//                     alignment: Alignment.topLeft,
//                     child: BoldText(
//                       text: "Password",
//                       color: AppColor.black0000000,
//                       textsize: 19,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: h * 0.005,
//                 ),
//                 CommonProflleTextField(
//                   hintText: "**********",
//                 ),
//                 SizedBox(
//                   height: h * 0.02,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: w * 0.05),
//                   child: Align(
//                     alignment: Alignment.topLeft,
//                     child: BoldText(
//                       text: "Date of Birth",
//                       color: AppColor.black0000000,
//                       textsize: 19,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: h * 0.005,
//                 ),
//                 CommonProflleTextField(
//                   hintText: "23/05/2000",
//                 ),
//                 SizedBox(
//                   height: h * 0.02,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: w * 0.05),
//                   child: Align(
//                     alignment: Alignment.topLeft,
//                     child: BoldText(
//                       text: "Country/Region",
//                       color: AppColor.black0000000,
//                       textsize: 19,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: h * 0.005,
//                 ),
//                 CommonProflleTextField(
//                   hintText: "Pakistan",
//                 ),
//                 SizedBox(
//                   height: h * 0.02,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: w * 0.05),
//                   child: CommonButton(
//                       ontap: (){
//
//                       },
//                       text: "Save Changes"),
//                 ),
//                 SizedBox(
//                   height: h * 0.02,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_screen/payment_receipt_screen/payment_recipt_screen.dart';
import 'package:greenfiy/common_widget/common_button.dart';
import 'package:greenfiy/common_widget/profile_text_field.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/common_widget/bold_text.dart';

import '../../common_widget/light_text.dart';

class OrderFormScreen extends StatefulWidget {
  final int? price;
  final DateTime? Date;

  const OrderFormScreen({super.key, this.price, this.Date});

  @override
  State<OrderFormScreen> createState() => _OrderFormScreenState();
}

class _OrderFormScreenState extends State<OrderFormScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    dobController.dispose();
    countryController.dispose();
    super.dispose();
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
                text: "Order Detail",
                color: AppColor.whiteFFFFFF,
                fontweight: FontWeight.w600,
                textsize: 20,
              ),
            ),
          ),
        ),
        backgroundColor: AppColor.whiteFFFFFF,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: h * 0.10,
                ),
                BoldText(
                    text: "Name", color: AppColor.black0000000, textsize: 19),
                SizedBox(height: h * 0.005),
                CommonProflleTextField(
                    textEditingController: nameController,
                    hintText: "AHMAD SHEHZAD"),
                SizedBox(height: h * 0.02),
                BoldText(
                    text: "Phone Number",
                    color: AppColor.black0000000,
                    textsize: 19),
                SizedBox(height: h * 0.005),
                CommonProflleTextField(
                    textEditingController: emailController,
                    hintText: "03000000000"),
                SizedBox(height: h * 0.02),
                BoldText(
                    text: "District",
                    color: AppColor.black0000000,
                    textsize: 19),
                SizedBox(height: h * 0.005),
                CommonProflleTextField(
                  textEditingController: passwordController,
                  hintText: "BahawalPur",
                ),
                SizedBox(height: h * 0.02),
                BoldText(
                    text: "Complete Address ",
                    color: AppColor.black0000000,
                    textsize: 19),
                SizedBox(height: h * 0.005),
                CommonProflleTextField(
                    textEditingController: dobController,
                    hintText: "Hall road Lahore"),
                SizedBox(height: h * 0.02),
                BoldText(
                    text: "Post Office ",
                    color: AppColor.black0000000,
                    textsize: 19),
                SizedBox(height: h * 0.005),
                CommonProflleTextField(
                  textEditingController: countryController,
                  hintText: "AH Post Office",
                  showDropdownIcon: false,
                ),
                SizedBox(height: h * 0.04),
                CommonButton(
                  text: "Order Now",
                  ontap: () {
                    // Check if any of the fields are empty
                    if (nameController.text.isEmpty ||
                        emailController.text.isEmpty ||
                        passwordController.text.isEmpty ||
                        dobController.text.isEmpty ||
                        countryController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Color(0xff118844),
                          content: LightText(
                            text: "All fields are required",
                            fontSize: 20,
                            color: AppColor.whiteFFFFFF,
                          ),
                        ),
                      );
                    } else {
                      // Navigate to the next screen if all fields are filled
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderCompleteReciptScreen(
                            price: widget.price,
                            Date: widget.Date,
                            name: nameController.text.toString(),
                            phoneNumber: emailController.text.toString(),
                          ),
                        ),
                      );
                    }
                  },
                ),

                SizedBox(height: h * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
