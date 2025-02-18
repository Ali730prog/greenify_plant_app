import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/app_const/app_images.dart';
import 'package:greenfiy/app_screen/bottom_bar_screen/bottom_bar_screen.dart';
import 'package:greenfiy/app_screen/order_complete_screen/order_complete_screen.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:circular_progress_stack/circular_progress_stack.dart';
import 'package:greenfiy/common_widget/common_button.dart';
import 'package:greenfiy/common_widget/light_text.dart';
import 'package:intl/intl.dart';

class OrderCompleteReciptScreen extends StatefulWidget {
  final int? price;
  final DateTime? Date;
  final String? name;
  final String? phoneNumber;

  const OrderCompleteReciptScreen(
      {super.key, this.price, this.Date,
        this.name = "Ahmad Shazad",
        this.phoneNumber ="A06453826151"
      });

  @override
  State<OrderCompleteReciptScreen> createState() =>
      _OrderCompleteReciptScreenState();
}

class _OrderCompleteReciptScreenState extends State<OrderCompleteReciptScreen> {
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd MMM yyyy').format(widget.Date!);
    print(formattedDate);
// int text =  widget.price.
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.green118844,
          centerTitle: true,
          iconTheme: IconThemeData(color: AppColor.whiteFFFFFF),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
          title: BoldText(
            text: "Payment Detail",
            color: AppColor.whiteFFFFFF,
            fontweight: FontWeight.w600,
            textsize: 20,
          ),
        ),
        body: Container(
          decoration:
              BoxDecoration(color: AppColor.whiteFFFFFF.withOpacity(0.8)),
          width: w,
          height: h,
          child: Column(
            children: [
              SizedBox(
                height: h * 0.05,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                width: w * 0.80,
                height: h * 0.60,
                decoration: BoxDecoration(
                    color: AppColor.whiteFFFFFF,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Center(
                      child: BoldText(
                        text: "Order Approved",
                        fontweight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    BoldText(
                      text: "Payment Total",
                      color: Color(0xff9FA2AB),
                      textsize: 17,
                      fontweight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Center(
                      child: BoldText(
                        text: "Rs ${widget.price.toString()}",
                        // text: "Rs 1235",
                        color: AppColor.black0000000,
                        fontweight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Center(
                      child: Row(
                        children: [
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.grey868686,
                            text: "Date",
                            fontSize: 14,
                          ),
                          Spacer(),
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.black0000000,
                            fontWeight: FontWeight.w500,

                            text: formattedDate,
                            //widget.Date!.toString(),
                            // text: "31 Dec 2023",
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Center(
                      child: Row(
                        children: [
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.grey868686,
                            text: "Details",
                            fontSize: 14,
                          ),
                          Spacer(),
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.black0000000,
                            fontWeight: FontWeight.w500,
                            text: "Residential",
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Center(
                      child: Row(
                        children: [
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.grey868686,
                            text: "Phone num",
                            fontSize: 14,
                          ),
                          Spacer(),
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.black0000000,
                            fontWeight: FontWeight.w500,
                            text: widget.phoneNumber.toString(),
                            // text: "A06453826151",
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Center(
                      child: Row(
                        children: [
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.grey868686,
                            text: "Account",
                            fontSize: 14,
                          ),
                          Spacer(),
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.black0000000,
                            fontWeight: FontWeight.w500,
                            text: widget.name.toString(),
                            // "Ali Hasnain",
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Divider(
                      thickness: 1,
                      color: AppColor.grey898989,
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Center(
                      child: Row(
                        children: [
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.grey868686,
                            text: "Total Payment",
                            fontSize: 14,
                          ),
                          Spacer(),
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.black0000000,
                            fontWeight: FontWeight.w500,
                            text: "Rs ${widget.price.toString()}",
                            // text: "RS 1200",
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Center(
                      child: Row(
                        children: [
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.grey868686,
                            text: "Tax",
                            fontSize: 14,
                          ),
                          Spacer(),
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.black0000000,
                            fontWeight: FontWeight.w500,
                            text: "Rs ${widget.price! / 10}",
                            // text: "RS 25",
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Center(
                      child: Row(
                        children: [
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.black0000000,
                            text: "Total",
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          Spacer(),
                          LightText(
                            textAlign: TextAlign.center,
                            color: AppColor.black0000000,
                            fontWeight: FontWeight.w500,
                            text: "Rs ${widget.price! - widget.price! / 10}",
                            // text: "RS 1225",
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.10),
                child: CommonButton(
                  border: 40,
                  text: "Cancle Order",
                  ontap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Color(0xff118844),
                        content: LightText(
                          text: "Your Order be Cancled",
                          fontSize: 20,
                          color: AppColor.whiteFFFFFF,
                        )));
                  },
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.10),
                child: CommonButton(
                  border: 40,
                  text: "Continue",
                  ontap: () {
                    setState(() {
                      isorder = true;
                    });

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderCompleteScreen()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

bool isorder = false;