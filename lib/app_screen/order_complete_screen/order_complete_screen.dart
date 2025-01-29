import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/app_const/app_images.dart';
import 'package:greenfiy/app_screen/bottom_bar_screen/bottom_bar_screen.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:circular_progress_stack/circular_progress_stack.dart';
import 'package:greenfiy/common_widget/common_button.dart';
import 'package:greenfiy/common_widget/light_text.dart';

import '../payment_receipt_screen/payment_recipt_screen.dart';

class OrderCompleteScreen extends StatefulWidget {
  final int? price;

  const OrderCompleteScreen({super.key, this.price});

  @override
  State<OrderCompleteScreen> createState() => _OrderCompleteScreenState();
}

class _OrderCompleteScreenState extends State<OrderCompleteScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.back), fit: BoxFit.cover)),
          width: w,
          height: h,
          child: Center(
            child: Container(
              width: w * 0.85,
              height: h * 0.56,
              decoration: BoxDecoration(
                  color: AppColor.whiteFFFFFF,
                  borderRadius: BorderRadius.circular(20)),
              child: isorder ?  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Center(
                    child: Container(
                      margin: EdgeInsets.only(top: h * 0.03),
                      width: w * 0.35,
                      height: h * 0.10,
                      decoration: BoxDecoration(
                          color: AppColor.whiteFFFFFF,
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 4, color: AppColor.grey6E6F6E)),
                      child: Icon(
                        Icons.check,
                        size: w * 0.15,
                        color: AppColor.green80CA5B,
                      ),
                    ),
                  ) ,
                  SizedBox(
                    height: h * 0.02,
                  ),
                  BoldText(
                    text: "Order Succesfully",
                    fontweight: FontWeight.w500,
                  ),
                  BoldText(
                    text: "Placed",
                    fontweight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  LightText(
                    text: "Payment will be made on delivery",
                    fontSize: 14,
                    color: AppColor.grey868686,
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                      child: LightText(
                        textAlign: TextAlign.center,
                        color: AppColor.grey868686,
                        text: "Your Garden products are on their way!",
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.10),
                    child: CommonButton(
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => BottomBarScreen()));
                        },
                        text: "Continue Shipping"),
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  LightText(
                    text: "Buy New More Plants ",
                    fontSize: 17,
                    color: AppColor.grey868686,
                  ),
                ],
              ) : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  BoldText(
                    text: "Sorry Your not",
                    fontweight: FontWeight.w500,
                  ),
                  BoldText(
                    text: "Order Found",
                    fontweight: FontWeight.w500,
                  ),
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}
