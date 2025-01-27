// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:greenfiy/app_const/app_color.dart';
// import 'package:greenfiy/app_const/app_images.dart';
// import 'package:greenfiy/common_widget/bold_text.dart';
// import 'package:greenfiy/common_widget/common_button.dart';
// import 'package:greenfiy/common_widget/light_text.dart';
//
// class CartScreen extends StatefulWidget {
//   const CartScreen({super.key});
//
//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }
//
// class _CartScreenState extends State<CartScreen> {
//   List<Map<String, String>> wishList = [
//     {
//       "image": "${AppImages.cart_1}",
//       "name": "Aloe vera",
//       "site": "outdoor",
//       "price": "40",
//       "qty": "1",
//     },
//     {
//       "image": "${AppImages.cart_2}",
//       "name": "Flowers",
//       "site": "outdoor",
//       "price": "50",
//       "qty": "1",
//     },
//     {
//       "image": "${AppImages.cart_3}",
//       "name": "Aloe vera",
//       "site": "outdoor",
//       "price": "40",
//       "qty": "1",
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           iconTheme: IconThemeData(color: AppColor.whiteFFFFFF),
//           leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: Icon(Icons.arrow_back_ios)),
//           automaticallyImplyLeading: false,
//           backgroundColor: AppColor.green118844,
//           centerTitle: true,
//           title: BoldText(
//             text: "Cart",
//             color: AppColor.whiteFFFFFF,
//             fontweight: FontWeight.w600,
//             textsize: 20,
//           ),
//         ),
//         backgroundColor: AppColor.whiteFFFFFF,
//         body: Column(
//           children: [
//             SizedBox(
//               height: h * 0.02,
//             ),
//             ListView.builder(
//               shrinkWrap: true,
//               itemCount: wishList.length,
//               itemBuilder: (context, index) {
//                 String price = wishList[index]['price'] ?? "";
//                 String qty1 = wishList[index]['qty'] ?? "1";
//                 int totalprice = int.parse(price) * int.parse(qty1);
//                 return Container(
//                   height: 150,
//                   child: _cartWidget(
//                     name: wishList[index]['name'] ?? "Unknown",
//                     site: wishList[index]['site'] ?? "Unknown",
//                     price: totalprice.toString(),
//                     image: wishList[index]['image'] ?? AppImages.cart_1,
//                     qty: int.parse(qty1),
//                   ),
//                 );
//               },
//             ),
//             BoldText(text: "Total Price:  \$ "),
//             CommonButton(text: "Buy Now")
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _cartWidget({
//     required String name,
//     required String site,
//     required String price,
//     required String image,
//     required int qty,
//   }) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     int? totalqty;
//
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: w * 0.03),
//       child: SizedBox(
//         height: h * 0.17,
//         child: Card(
//           shadowColor: AppColor.grey544C4C,
//           elevation: 05,
//           color: AppColor.whiteFFFFFF,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Image.asset(
//                 image,
//                 width: w * 0.21,
//                 fit: BoxFit.contain,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: w * 0.02),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     BoldText(
//                       text: name,
//                       color: AppColor.green80CA5B,
//                       fontweight: FontWeight.w600,
//                       textsize: 16,
//                     ),
//                     SizedBox(
//                       height: h * 0.003,
//                     ),
//                     LightText(
//                       text: site,
//                       color: AppColor.grey4D4D4D,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 13,
//                     ),
//                     SizedBox(
//                       height: h * 0.01,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: w * 0.02),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           LightText(
//                             text: "Price",
//                             color: AppColor.grey898989,
//                             fontWeight: FontWeight.w700,
//                             fontSize: 16,
//                           ),
//                           LightText(
//                             text: "  ${price} \$",
//                             color: AppColor.green80CA5B,
//                             fontWeight: FontWeight.w600,
//                             fontSize: 16,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: w * 0.27,
//                 height: h * 0.04,
//                 decoration: BoxDecoration(
//                     color: AppColor.greenEBFDF2.withOpacity(0.6),
//                     borderRadius: BorderRadius.circular(100)),
//                 child: Stack(
//                   children: [
//                     Container(
//                       child: Center(
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   totalqty =  qty++;
//                                 });
//                               },
//                               icon: Icon(
//                                 Icons.add,
//                                 size: w * 0.05,
//                                 color: AppColor.green80CA5B,
//                               ),
//                             ),
//                             // Spacer(),
//                             IconButton(
//                               onPressed: () {
//                                 if (qty > 1) {
//                                   setState(() {
//                                    totalqty = qty--;
//
//                                   });
//                                 }
//                               },
//                               icon: Icon(
//                                 Icons.remove,
//                                 size: w * 0.05,
//                                 color: AppColor.green80CA5B,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: w * 0.10),
//                       width: w * 0.07,
//                       height: h * 0.50,
//                       decoration: BoxDecoration(
//                           color: AppColor.green80CA5B, shape: BoxShape.circle),
//                       child: Center(
//                         child: LightText(
//                           text: totalqty.toString(),
//                           color: AppColor.whiteFFFFFF,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 20,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Spacer(),
//               Image.asset(
//                 AppImages.delete,
//                 width: w * 0.10,
//               ),
//               SizedBox(
//                 width: w * 0.02,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/app_const/app_images.dart';
import 'package:greenfiy/app_screen/order_complete_screen/order_complete_screen.dart';
import 'package:greenfiy/app_screen/order_placed_screen/order_placed_screen.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:greenfiy/common_widget/common_button.dart';
import 'package:greenfiy/common_widget/light_text.dart';

class CartScreen extends StatefulWidget {

  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Map<String, dynamic>> wishList = [
    {
      "image": "${AppImages.cart_1}",
      "name": "Aloe vera",
      "site": "outdoor",
      "price": 40,
      "qty": 1,
    },
    {
      "image": "${AppImages.cart_2}",
      "name": "Flowers",
      "site": "outdoor",
      "price": 50,
      "qty": 1,
    },
    {
      "image": "${AppImages.cart_3}",
      "name": "Aloe vera",
      "site": "outdoor",
      "price": 40,
      "qty": 1,
    },
  ];

  int get totalPrice {
    int total = 0;
    for (var item in wishList) {
      total += (item['price'] as int) * (item['qty'] as int); // casting as int
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColor.whiteFFFFFF),
              leading:  iscart ?IconButton(
              onPressed: () {
                setState(() {
                  iscart = false;
                });
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)) : null,
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.green118844,
          centerTitle: true,
          title: BoldText(
            text: "Cart",
            color: AppColor.whiteFFFFFF,
            fontweight: FontWeight.w600,
            textsize: 20,
          ),
        ),
        backgroundColor: AppColor.whiteFFFFFF,
        body: Column(
          children: [
            SizedBox(
              height: h * 0.02,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: wishList.length,
              itemBuilder: (context, index) {
                String name = wishList[index]['name'] ?? "Unknown";
                String site = wishList[index]['site'] ?? "Unknown";
                int price = wishList[index]['price'] ?? 0;
                int qty = wishList[index]['qty'] ?? 1;

                int totalprice = price * qty;

                return Container(
                  height: 150,
                  child: _cartWidget(
                    name: name,
                    site: site,
                    price: totalprice.toString(),
                    image: wishList[index]['image'] ?? AppImages.cart_1,
                    qty: qty,
                    index: index,
                  ),
                );
              },
            ),
            Spacer(),
            BoldText(text: "Total Price: \$ ${totalPrice.toString()}"),
            SizedBox(height: h*0.02,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: w*0.05),
              child: CommonButton(
                  ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderCompleteScreen()));
                  },
                  text: "Buy Now"),
            ),
            SizedBox(height: h*0.02,)
          ],
        ),
      ),
    );
  }

  Widget _cartWidget({
    required String name,
    required String site,
    required String price,
    required String image,
    required int qty,
    required int index,
  }) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.03),
      child: SizedBox(
        height: h * 0.17,
        child: Card(
          shadowColor: AppColor.grey544C4C,
          elevation: 05,
          color: AppColor.whiteFFFFFF,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                image,
                width: w * 0.21,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: EdgeInsets.only(left: w * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BoldText(
                      text: name,
                      color: AppColor.green80CA5B,
                      fontweight: FontWeight.w600,
                      textsize: 16,
                    ),
                    SizedBox(
                      height: h * 0.003,
                    ),
                    LightText(
                      text: site,
                      color: AppColor.grey4D4D4D,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.02),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          LightText(
                            text: "Price",
                            color: AppColor.grey898989,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                          LightText(
                            text: "  ${price} \$",
                            color: AppColor.green80CA5B,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w * 0.27,
                height: h * 0.04,
                decoration: BoxDecoration(
                    color: AppColor.greenEBFDF2.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(100)),
                child: Stack(
                  children: [
                    Container(
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  wishList[index]['qty']++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                size: w * 0.05,
                                color: AppColor.green80CA5B,
                              ),
                            ),
                            // Spacer(),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (wishList[index]['qty'] > 1) {
                                    wishList[index]['qty']--;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                size: w * 0.05,
                                color: AppColor.green80CA5B,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: w * 0.10,),
                      width: w * 0.07,
                      height: h * 0.50,
                      decoration: BoxDecoration(
                          color: AppColor.green80CA5B, shape: BoxShape.circle),
                      child: Center(
                        child: LightText(
                          text: wishList[index]['qty'].toString(),
                          color: AppColor.whiteFFFFFF,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Image.asset(
                AppImages.delete,
                width: w * 0.10,
              ),
              SizedBox(
                width: w * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

bool iscart = false;