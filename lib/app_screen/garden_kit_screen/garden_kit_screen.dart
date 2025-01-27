import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/app_const/app_images.dart';
import 'package:greenfiy/app_screen/detail_screen/detail_screen.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:greenfiy/common_widget/light_text.dart';

import '../garden_kit_detail_screen/garden_kit_detail_screen.dart';

class GardenKitScreen extends StatefulWidget {
  const GardenKitScreen({super.key});

  @override
  State<GardenKitScreen> createState() => _GardenKitScreenState();
}

class _GardenKitScreenState extends State<GardenKitScreen> {
  List wishList = [
    {
      "image": "${AppImages.PruningShears}",
      "name": "Pruning Shears",
      "site": "Flowering plants",
      "price": "40",
      "des":
          "Sharp, curved blades for trimming and shaping plants, especially for removing dead or diseased branches to improve plant health. The ergonomic handles ensure comfort and ease during use.",
    },
    {
      "image": "${AppImages.WateringCan}",
      "name": "Watering Can",
      "site": "Indoor plants",
      "price": "500",
      "des":
          "A container with a long spout to water plants precisely. It allows for gentle watering, which is especially important for sensitive plants"
    },
    {
      "image": "${AppImages.Trowel}",
      "name": "Trowel",
      "site": "Herbs ",
      "price": "400",
      "des":
          "A small hand shovel with a pointed or rounded end for digging, planting, and transplanting. It’s typically lightweight, which makes it easy to maneuver."
    },
    {
      "image": "${AppImages.GardenGloves}",
      "name": "Garden Gloves",
      "site": "Cactus plants",
      "price": "750",
      "des":
          "Durable, protective gloves to guard against thorns, rough soil, or chemicals. Some gloves come with latex or rubber coating for a better grip",
    },
    {
      "image": "${AppImages.PlantStakes}",
      "name": "Plant Stakes",
      "site": "Climbing plants",
      "price": "840",
      "des":
          "Sturdy rods used to support plants and prevent them from bending or breaking. Available in various lengths, they’re essential for taller or sprawling plants.",
    },
    {
      "image": "${AppImages.HandRake}",
      "name": "Hand Rake",
      "site": "Ground cover",
      "price": "50",
      "des":
          "A small rake designed to loosen soil, clear debris, and remove weeds from the surface of the soil.",
    },
    {
      "image": "${AppImages.PlantLabels}",
      "name": "Plant Labels",
      "site": "Herb gardens",
      "price": "400",
      "des":
          "Tags or markers used to label plants with their names, care instructions, or planting dates."
    },
    {
      "image": "${AppImages.GardenScissors}",
      "name": "Garden Scissors",
      "site": "Flowers, herbs",
      "price": "500",
      "des":
          " Sharp, precise scissors designed for cutting small stems, flowers, and leaves without damaging the plant.",
    },
    {
      "image": "${AppImages.SoilScoop}",
      "name": "Soil Scoop",
      "site": "Potted plants",
      "price": "900",
      "des":
          "A scoop that helps transfer soil, compost, or fertilizers with ease, often with a deep and wide scoop to handle large amounts at once."
    },
    {
      "image": "${AppImages.GardenHoe}",
      "name": "Garden Hoe",
      "site": " Vegetable gardens",
      "price": "550",
      "des":
          "A long-handled tool with a flat blade used for breaking up soil, removing weeds, or aerating the soil."
    },
    {
      "image": "${AppImages.TransplantingSpade}",
      "name": "Transplanting Spade",
      "site": "Newly planted",
      "price": "408",
      "des":
          " A small, narrow spade with a pointed edge, ideal for transplanting plants with minimal root disturbance. It allows for precision when moving plants.",
    },
    {
      "image": "${AppImages.ComposAerator}",
      "name": "Compos Aerator",
      "site": "Composting setups.",
      "price": "650",
      "des":
          "A tool designed to mix and aerate compost piles to help break down organic material more efficiently. It’s usually long-handled with a rotating mechanism."
    },
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.green118844,
          centerTitle: true,
          iconTheme: IconThemeData(color: AppColor.whiteFFFFFF),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
          title: BoldText(
            text: "Garden kit",
            color: AppColor.whiteFFFFFF,
            fontweight: FontWeight.w600,
            textsize: 20,
          ),
        ),
        backgroundColor: AppColor.greyDADADA4D,
        body: Container(
          width: w,
          height: h,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.03),
                  child: InkWell(
                    onTap: () {},
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
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => DetailScreen(
                                          name: wishList[index]['name'],
                                          desc: wishList[index]['des'],
                                          price: int.parse(wishList[index]['price']),
                                          image: wishList[index]['image'],
                                        )
                              // builder: (_) => GardenKitDetailScreen(
                                        //   name: wishList[index]['name'],
                                        //   des: wishList[index]['des'],
                                        //   price: wishList[index]['price'],
                                        //   image: wishList[index]['image'],
                                        // )

                                ));
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
                      child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                    child: Image.asset(
                      image,
                      width: w * 0.50,
                      height: h * 0.18,
                      fit: BoxFit.cover,
                    ),
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
                            Container(
                              width: 80,
                              child: BoldText(
                                textOverflow: TextOverflow.ellipsis,
                                text: name,
                                color: AppColor.green80CA5B,
                                fontweight: FontWeight.w600,
                                textsize: 14,
                              ),
                            ),
                            Container(
                              width: 80,
                              child: LightText(
                                textOverflow: TextOverflow.ellipsis,
                                text: site,
                                color: AppColor.grey4D4D4D,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
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
                          text: "${price}",
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
          ],
        ));
  }
}
