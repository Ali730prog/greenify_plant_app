import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/app_const/app_images.dart';
import 'package:greenfiy/app_screen/detail_screen/detail_screen.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:greenfiy/common_widget/light_text.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {

  List wishList = [
    {
      "image": "${AppImages.favourite_1}",
      "name": "Aloe vera",
      "site": "outdoor",
      "price": "40",
      "height":"7.2",
      "humadity":"72",
      "width":"3.3",
      "des":"Aloe Vera also known as aloe africana has"
          "strong air purifying qualities. This succulant"
          "plant is known for purifying air from chemicals"
          "found in household cleaning product. Unlike"
          "other indoor plant Aloe keeps water in its"
          "leavesnot the soil untill it needs it. Aloe requires"
          "Bright sun light even though it only need very"
          "little water."
    },
    {
      "image": "${AppImages.favourite_2}",
      "name": "Flowers",
      "site": "outdoor",
      "price": "50",
      "height":"7.2",
      "humadity":"72",
      "width":"3.3",
      "des":"Aloe Vera also known as aloe africana has"
          "strong air purifying qualities. This succulant"
          "plant is known for purifying air from chemicals"
          "found in household cleaning product. Unlike"
          "other indoor plant Aloe keeps water in its"
          "leavesnot the soil untill it needs it. Aloe requires"
          "Bright sun light even though it only need very"
          "little water."
    },
    {
      "image": "${AppImages.favourite_1}",
      "name": "Aloe vera",
      "site": "outdoor",
      "price": "40",
      "height":"7.2",
      "humadity":"72",
      "width":"3.3",
      "des":"Aloe Vera also known as aloe africana has"
          "strong air purifying qualities. This succulant"
          "plant is known for purifying air from chemicals"
          "found in household cleaning product. Unlike"
          "other indoor plant Aloe keeps water in its"
          "leavesnot the soil untill it needs it. Aloe requires"
          "Bright sun light even though it only need very"
          "little water."
    },
    {
      "image": "${AppImages.favourite_2}",
      "name": "Flowers",
      "site": "outdoor",
      "price": "50",
      "height":"7.2",
      "humadity":"72",
      "width":"3.3",
      "des":"Aloe Vera also known as aloe africana has"
          "strong air purifying qualities. This succulant"
          "plant is known for purifying air from chemicals"
          "found in household cleaning product. Unlike"
          "other indoor plant Aloe keeps water in its"
          "leavesnot the soil untill it needs it. Aloe requires"
          "Bright sun light even though it only need very"
          "little water."
    },
    {
      "image": "${AppImages.favourite_1}",
      "name": "Aloe vera",
      "site": "outdoor",
      "price": "40",
      "height":"7.2",
      "humadity":"72",
      "width":"3.3",
      "des":"Aloe Vera also known as aloe africana has"
          "strong air purifying qualities. This succulant"
          "plant is known for purifying air from chemicals"
          "found in household cleaning product. Unlike"
          "other indoor plant Aloe keeps water in its"
          "leavesnot the soil untill it needs it. Aloe requires"
          "Bright sun light even though it only need very"
          "little water."
    },
    {
      "image": "${AppImages.favourite_2}",
      "name": "Flowers",
      "site": "outdoor",
      "price": "50",
      "height":"7.2",
      "humadity":"72",
      "width":"3.3",
      "des":"Aloe Vera also known as aloe africana has"
          "strong air purifying qualities. This succulant"
          "plant is known for purifying air from chemicals"
          "found in household cleaning product. Unlike"
          "other indoor plant Aloe keeps water in its"
          "leavesnot the soil untill it needs it. Aloe requires"
          "Bright sun light even though it only need very"
          "little water."
    },
    {
      "image": "${AppImages.favourite_1}",
      "name": "Aloe vera",
      "site": "outdoor",
      "price": "40",
      "height":"7.2",
      "humadity":"72",
      "width":"3.3",
      "des":"Aloe Vera also known as aloe africana has"
          "strong air purifying qualities. This succulant"
          "plant is known for purifying air from chemicals"
          "found in household cleaning product. Unlike"
          "other indoor plant Aloe keeps water in its"
          "leavesnot the soil untill it needs it. Aloe requires"
          "Bright sun light even though it only need very"
          "little water."
    },
    {
      "image": "${AppImages.favourite_2}",
      "name": "Flowers",
      "site": "outdoor",
      "price": "50",
      "height":"7.2",
      "humadity":"72",
      "width":"3.3",
      "des":"Aloe Vera also known as aloe africana has"
          "strong air purifying qualities. This succulant"
          "plant is known for purifying air from chemicals"
          "found in household cleaning product. Unlike"
          "other indoor plant Aloe keeps water in its"
          "leavesnot the soil untill it needs it. Aloe requires"
          "Bright sun light even though it only need very"
          "little water."
    },
    {
      "image": "${AppImages.favourite_1}",
      "name": "Aloe vera",
      "site": "outdoor",
      "price": "40",
      "height":"7.2",
      "humadity":"72",
      "width":"3.3",
      "des":"Aloe Vera also known as aloe africana has"
          "strong air purifying qualities. This succulant"
          "plant is known for purifying air from chemicals"
          "found in household cleaning product. Unlike"
          "other indoor plant Aloe keeps water in its"
          "leavesnot the soil untill it needs it. Aloe requires"
          "Bright sun light even though it only need very"
          "little water."
    },
    {
      "image": "${AppImages.favourite_2}",
      "name": "Flowers",
      "site": "outdoor",
      "price": "50",
      "height":"7.2",
      "humadity":"72",
      "width":"3.3",
      "des":"Aloe Vera also known as aloe africana has"
          "strong air purifying qualities. This succulant"
          "plant is known for purifying air from chemicals"
          "found in household cleaning product. Unlike"
          "other indoor plant Aloe keeps water in its"
          "leavesnot the soil untill it needs it. Aloe requires"
          "Bright sun light even though it only need very"
          "little water."
    },
    {
      "image": "${AppImages.favourite_1}",
      "name": "Aloe vera",
      "site": "outdoor",
      "price": "40",
      "height":"7.2",
      "humadity":"72",
      "width":"3.3",
      "des":"Aloe Vera also known as aloe africana has"
          "strong air purifying qualities. This succulant"
          "plant is known for purifying air from chemicals"
          "found in household cleaning product. Unlike"
          "other indoor plant Aloe keeps water in its"
          "leavesnot the soil untill it needs it. Aloe requires"
          "Bright sun light even though it only need very"
          "little water."
    },
    {
      "image": "${AppImages.favourite_2}",
      "name": "Flowers",
      "site": "outdoor",
      "price": "50",
      "height":"7.2",
      "humadity":"72",
      "width":"3.3",
      "des":"Aloe Vera also known as aloe africana has"
          "strong air purifying qualities. This succulant"
          "plant is known for purifying air from chemicals"
          "found in household cleaning product. Unlike"
          "other indoor plant Aloe keeps water in its"
          "leavesnot the soil untill it needs it. Aloe requires"
          "Bright sun light even though it only need very"
          "little water."
    },
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.green118844,
          centerTitle: true,
          iconTheme: IconThemeData(color: AppColor.whiteFFFFFF),
          leading: iswish? IconButton(onPressed: (){
            setState(() {
              iswish = false;
            });
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios)) : null,
          title: BoldText(
            text: "Favourite",
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: h * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.03),
                  child: InkWell(

                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: h * 0.25,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2),
                      itemCount: wishList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailScreen(
                                type: wishList[index]['site'],
                                image: wishList[index]['image'],
                                desc: wishList[index]['des'],
                                price: int.parse(wishList[index]['price']),
                                name: wishList[index]['name'],
                              )));
                          },
                          child: _wishListWidget(
                            image: wishList[index]['image'],
                            name: wishList[index]['name'],
                            site: wishList[index]['site'],
                            price: wishList[index]['price'],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _wishListWidget({
    required String name,
    required String site,
    required String price,
    required String image,
  }) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: AppColor.grey544C4C.withOpacity(0.3),
                  offset: Offset(0, 0),
                  blurRadius: 04,
                  spreadRadius: 2)
            ],
            color: AppColor.whiteFFFFFF,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: AppColor.greyDADADA4D.withOpacity(0.5),
            )),
        child: Stack(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: Image.asset(
                    image,
                    width: w * 0.40,
                    height: h * 0.18,
                    fit: BoxFit.contain,
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            BoldText(
                              text: name,
                              color: AppColor.green80CA5B,
                              fontweight: FontWeight.w600,
                              textsize: 16,
                            ),
                            LightText(
                              text: site,
                              color: AppColor.grey4D4D4D,
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: w * 0.16,
                        height: h * 0.06,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                            color: AppColor.greyE0E0E0),
                        child: Center(
                            child: BoldText(
                          text: "\$${price}",
                          fontweight: FontWeight.bold,
                          textsize: 20,
                          color: AppColor.green80CA5B,
                        )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: h * 0.15, left: w * 0.35),
              child: Image.asset(
                AppImages.heart,
                width: w * 0.08,
              ),
            )
          ],
        ));
  }
}
bool iswish = false;