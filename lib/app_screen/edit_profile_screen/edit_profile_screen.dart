import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/common_widget/common_button.dart';
import 'package:greenfiy/common_widget/profile_text_field.dart';
import 'package:image_picker/image_picker.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:circular_progress_stack/circular_progress_stack.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? _pickedImage;

  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? image = await _imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );
    if (image != null) {
      setState(() {
        _pickedImage = File(image.path);
      });
    }
  }

  List<String> countries = [
    "Pakistan",
    "India",
    "Bangladesh",
    "Afghanistan",
    "Sri Lanka",
    "Nepal",
    "Bhutan",
    "Maldives",
    "China",
    "Japan",
    "South Korea",
    "North Korea",
    "Indonesia",
    "Malaysia",
    "Singapore",
    "Thailand",
    "Myanmar (Burma)",
    "Vietnam",
    "Philippines",
    "Mongolia"
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
                text: "Edit Profile",
                color: AppColor.whiteFFFFFF,
                fontweight: FontWeight.w600,
                textsize: 20,
              ),
            ),
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
                Container(
                  width: w * 0.35,
                  height: h * 0.20,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AnimatedStackCircularProgressBar(
                        size: 130,
                        progressStrokeWidth: 5,
                        backStrokeWidth: 5,
                        startAngle: 0,
                        backColor: const Color(0xffD7DEE7),
                        bars: [
                          AnimatedBarValue(
                            barColor: AppColor.green118844,
                            barValues: 100,
                            fullProgressColors: Colors.red,
                          ),
                        ],
                      ),
                      // Profile Image
                      Positioned(
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: _pickedImage != null
                                  ? FileImage(_pickedImage!)
                                  : AssetImage("assets/images/AliHasanain.jpg")
                                      as ImageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: h * 0.020,
                        right: w * 0.01,
                        child: GestureDetector(
                          onTap: _pickImage,
                          child: Container(
                            width: w * 0.10,
                            height: h * 0.05,
                            decoration: BoxDecoration(
                              color: AppColor.green118844,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: BoldText(
                      text: "Name",
                      color: AppColor.black0000000,
                      textsize: 19,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                CommonProflleTextField(
                  hintText: "AHMAD SHEHZAD",
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: BoldText(
                      text: "Email",
                      color: AppColor.black0000000,
                      textsize: 19,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                CommonProflleTextField(
                  hintText: "AHMADSHEHZAD@gmail.com",
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: BoldText(
                      text: "Password",
                      color: AppColor.black0000000,
                      textsize: 19,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                CommonProflleTextField(
                  hintText: "**********",
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: BoldText(
                      text: "Date of Birth",
                      color: AppColor.black0000000,
                      textsize: 19,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                CommonProflleTextField(
                  hintText: "23/05/2000",
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: BoldText(
                      text: "Country/Region",
                      color: AppColor.black0000000,
                      textsize: 19,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                CommonProflleTextField(
                  hintText: "Pakistan",
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: CommonButton(text: "Save Changes"),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
