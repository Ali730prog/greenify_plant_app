import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:greenfiy/common_widget/common_button.dart';
import 'package:greenfiy/common_widget/light_text.dart';

class DetailScreen extends StatefulWidget {
  final String? name;
  final String? image;
  final String? desc;
  final int? price;
  final String? type;

  const DetailScreen(
      {super.key, this.name, this.image, this.desc, this.price, this.type});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int qty = 1;

  @override
  Widget build(BuildContext context) {
    int price = widget.price! * qty;

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          iconTheme: IconThemeData(
            color: AppColor.whiteFFFFFF,
          ),
          backgroundColor: AppColor.green118844,
          centerTitle: true,
          title: BoldText(
            text: "Plant Detail",
            color: AppColor.whiteFFFFFF,
            fontweight: FontWeight.w600,
            textsize: 20,
          ),
        ),
        backgroundColor: AppColor.whiteFFFFFF,
        body: Container(
          width: w,
          height: h,
          child: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                // height: h * 0.03,
              ),
              Stack(
                children: [
                  Container(
                    child: Center(
                      child: Image.asset(
                        widget.image ?? "",
                        width: w ,
                        height: h * 0.40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    child: Container(
                      margin: EdgeInsets.only(top: h * 0.30),
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
                              height: h * 0.03,
                            ),
                            BoldText(
                              text: widget.name!,
                              color: AppColor.black0000000,
                              fontweight: FontWeight.w600,
                              textsize: 22,
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            LightText(
                              text: widget.desc ?? "",
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
                                          text: "Price",
                                          color: AppColor.black0000000,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                        BoldText(
                                          text: "\$$price",
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
                                          fontSize: 20,
                                        ),
                                        Row(
                                          children: [
                                            IconButton.filled(
                                              style: ButtonStyle(
                                                  minimumSize:
                                                      WidgetStateProperty.all(
                                                          Size(15, 15)),
                                                  maximumSize:
                                                      WidgetStateProperty.all(
                                                          Size(30, 30)),
                                                  backgroundColor:
                                                      WidgetStatePropertyAll(
                                                          AppColor
                                                              .green80CA5B)),
                                              onPressed: () {
                                                setState(() {
                                                  qty++;
                                                });
                                              },
                                              icon: Icon(
                                                Icons.add,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              width: w * 0.07,
                                              child: Center(
                                                child: LightText(
                                                  text: qty.toString(),
                                                  color: AppColor.black0000000,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22,
                                                ),
                                              ),
                                            ),
                                            IconButton.filled(
                                              style: ButtonStyle(
                                                  minimumSize:
                                                      WidgetStateProperty.all(
                                                          Size(15, 15)),
                                                  maximumSize:
                                                      WidgetStateProperty.all(
                                                          Size(30, 30)),
                                                  backgroundColor:
                                                      WidgetStatePropertyAll(
                                                          AppColor
                                                              .green80CA5B)),
                                              color: AppColor.redF52121,
                                              onPressed: () {
                                                setState(() {
                                                  qty > 1 ? qty-- : null;
                                                });
                                              },
                                              icon: Center(
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      LightText(
                                        text: "Height",
                                        color: AppColor.black0000000,
                                      ),
                                      LightText(
                                        text: "7.2",
                                        color: AppColor.green80CA5B,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      LightText(
                                        text: "Humadity",
                                        color: AppColor.black0000000,
                                      ),
                                      LightText(
                                        text: "72%",
                                        color: AppColor.green80CA5B,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      LightText(
                                        text: "width",
                                        color: AppColor.black0000000,
                                      ),
                                      LightText(
                                        text: "3.3%",
                                        color: AppColor.green80CA5B,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Center(
                                    child: Padding(
                                  padding: EdgeInsets.only(right: w * 0.05),
                                  child: CommonButton(text: "Add to Cart"),
                                ))),
                            SizedBox(
                              height: h * 0.03,
                            ),
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
