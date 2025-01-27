import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/app_const/app_images.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:greenfiy/common_widget/common_button.dart';
import 'package:greenfiy/common_widget/light_text.dart';

class GardenKitDetailScreen extends StatefulWidget {
  final String name;
  final String des;
  final String price;
  final String image;

  const GardenKitDetailScreen(
      {super.key,
      required this.name,
      required this.des,
      required this.price,
      required this.image});

  @override
  State<GardenKitDetailScreen> createState() => _GardenKitDetailScreenState();
}

class _GardenKitDetailScreenState extends State<GardenKitDetailScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.green118844,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios)),
          iconTheme: IconThemeData(color: AppColor.whiteFFFFFF),
          centerTitle: true,
          title: BoldText(
            text: "Tool Detail",
            color: AppColor.whiteFFFFFF,
            fontweight: FontWeight.w600,
            textsize: 20,
          ),
        ),
        backgroundColor: AppColor.whiteFFFFFF.withOpacity(0.9),
        body: Container(
          width: w,
          height: h,
          child: SingleChildScrollView(
              child: Column(
            children: [

              Stack(
                children: [
                  Container(
                    width: w,
                    height: h*0.20,
                    child: Image.asset(
                      widget.image,
                      width: w ,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    child: Container(
                      margin: EdgeInsets.only(top: h * 0.28),
                      decoration: BoxDecoration(
                          color: AppColor.whiteFFFFFF,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: EdgeInsets.only(left: w * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: h * 0.01,
                            ),
                            BoldText(

                              text: widget.name,
                              color: AppColor.black0000000,
                              fontweight: FontWeight.w600,
                              textsize: 22,
                            ),
                            LightText(
                              text: widget.des,
                              color: AppColor.black0000000,
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.01, right: w * 0.04),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        LightText(
                                          // text: widget.price,
                                          text: "Price",
                                          color: AppColor.black0000000,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                        BoldText(
                                          text: "\$${widget.price}",
                                          color: AppColor.black0000000,
                                          fontweight: FontWeight.w600,
                                          textsize: 22,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        LightText(
                                          text: "Quantity",
                                          color: AppColor.black0000000,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: w * 0.11,
                                              height: h * 0.03,
                                              decoration: BoxDecoration(
                                                  color: AppColor.green118844,
                                                  shape: BoxShape.circle),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                            LightText(
                                              text: "2",
                                              color: AppColor.black0000000,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                            ),
                                            Container(
                                              width: w * 0.11,
                                              height: h * 0.03,
                                              decoration: BoxDecoration(
                                                  color: AppColor.green118844,
                                                  shape: BoxShape.circle),
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            // Row(
                            //   crossAxisAlignment: CrossAxisAlignment.center,
                            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                            //   children: [
                            //     Container(
                            //       child: Column(
                            //         children: [
                            //           LightText(
                            //             text: "Height",
                            //             color: AppColor.black0000000,
                            //           ),
                            //           LightText(
                            //             text: "7.2",
                            //             color: AppColor.green80CA5B,
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //     Container(
                            //       child: Column(
                            //         children: [
                            //           LightText(
                            //             text: "Humadity",
                            //             color: AppColor.black0000000,
                            //           ),
                            //           LightText(
                            //             text: "72%",
                            //             color: AppColor.green80CA5B,
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //     Container(
                            //       child: Column(
                            //         children: [
                            //           LightText(
                            //             text: "width",
                            //             color: AppColor.black0000000,
                            //           ),
                            //           LightText(
                            //             text: "3.3%",
                            //             color: AppColor.green80CA5B,
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Center(
                                    child: Padding(
                                  padding: EdgeInsets.only(right: w * 0.05),
                                  child: CommonButton(text: "Add to Cart"),
                                )))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
