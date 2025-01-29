import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenfiy/common_widget/common_button.dart';
import 'package:greenfiy/common_widget/profile_text_field.dart';
import 'package:image_picker/image_picker.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:greenfiy/common_widget/bold_text.dart';
import 'package:circular_progress_stack/circular_progress_stack.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController regionController = TextEditingController();




  _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Load the saved values from SharedPreferences
    String email = prefs.getString('email') ?? "AHMAD SHEHZAD";
    String name = prefs.getString('name') ?? "AHMADSHEHZAD@gmail.com";
    String hobby = prefs.getString('hobby') ?? "Gardening";
    String dob = prefs.getString('dob') ?? "23/05/2000";
    String country = prefs.getString('country') ?? 'Pakistan';
print("This is my email $email");
    print("This is my name $name");
    print("This is my hobby $hobby");
    print("This is my dob $dob");
    print("This is my country $country");






    setState(() {
      nameController.text = name;
      emailController.text = email;
      passwordController.text = hobby;
      dateController.text = dob;
      regionController.text = country;
    });
  }

_saveDate()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('name', nameController.text);
  prefs.setString('email', emailController.text);
  prefs.setString('hobby', passwordController.text);
  prefs.setString('dob', dateController.text);
  prefs.setString('country', regionController.text);

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Profile updated successfully!'),
    ),
  );
}

@override
  void initState() {
    super.initState();
    _loadData();
  }

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

  Future<void> saveImagePathToSharedPrefs(String imagePath) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('imagePath', imagePath);  // Save image path to shared preferences
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
                      // AnimatedStackCircularProgressBar(
                      //   size: 130,
                      //   progressStrokeWidth: 5,
                      //   backStrokeWidth: 5,
                      //   startAngle: 0,
                      //   backColor: const Color(0xffD7DEE7),
                      //   bars: [
                      //     AnimatedBarValue(
                      //       barColor: AppColor.green118844,
                      //       barValues: 100,
                      //       fullProgressColors: Colors.red,
                      //     ),
                      //   ],
                      // ),
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
                                  : AssetImage("assets/images/profile2.jpg")
                                      as ImageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      // Positioned(
                      //   bottom: h * 0.020,
                      //   right: w * 0.01,
                      //   child: GestureDetector(
                      //     onTap: _pickImage,
                      //     child: Container(
                      //       width: w * 0.10,
                      //       height: h * 0.05,
                      //       decoration: BoxDecoration(
                      //         color: AppColor.green118844,
                      //         shape: BoxShape.circle,
                      //         border: Border.all(
                      //           color: Colors.white,
                      //           width: 2,
                      //         ),
                      //       ),
                      //       child: const Icon(
                      //         Icons.camera_alt,
                      //         color: Colors.white,
                      //         size: 20,
                      //       ),
                      //     ),
                      //   ),
                      // ),
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
                  textEditingController: nameController,
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
                  textEditingController: emailController,
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
                      text: "Hobby",
                      color: AppColor.black0000000,
                      textsize: 19,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                CommonProflleTextField(
                  textEditingController: passwordController,
                  hintText: "Gardening",
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
                  textEditingController: dateController,
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
                  textEditingController: regionController,
                  hintText: "Pakistan",
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: CommonButton(
                      ontap: _saveDate,
                      text: "Save Changes"),
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

// class DatabaseHelper {
//   static final DatabaseHelper instance = DatabaseHelper._init();
//   static Database? _database;
//
//   DatabaseHelper._init();
//
//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     _database = await _initDB();
//     return _database!;
//   }
//
//   Future<Database> _initDB() async {
//     String path = join(await getDatabasesPath(), 'user_data.db');
//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: (db, version) {
//         db.execute('''
//           CREATE TABLE user (
//             id INTEGER PRIMARY KEY AUTOINCREMENT,
//             imagePath TEXT
//           )
//         ''');
//       },
//     );
//   }
//
//   Future<void> saveUserImage(String imagePath) async {
//     final db = await database;
//     await db.insert('user', {'imagePath': imagePath},
//         conflictAlgorithm: ConflictAlgorithm.replace);
//   }
//
//   Future<String?> getUserImage() async {
//     final db = await database;
//     final result = await db.query('user', limit: 1);
//     if (result.isNotEmpty) {
//       return result.first['imagePath'] as String?;
//     }
//     return null;
//   }
// }
//
// class EditProfileScreen extends StatefulWidget {
//   const EditProfileScreen({super.key});
//
//   @override
//   State<EditProfileScreen> createState() => _EditProfileScreenState();
// }
//
// class _EditProfileScreenState extends State<EditProfileScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController dobController = TextEditingController();
//   String selectedCountry = "Select Country";
//   File? _pickedImage;
//   final DatabaseHelper dbHelper = DatabaseHelper.instance;
//   final ImagePicker _imagePicker = ImagePicker();
//
//   Future<void> _saveProfileData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('name', nameController.text);
//     await prefs.setString('email', emailController.text);
//     await prefs.setString('password', passwordController.text);
//     await prefs.setString('dob', dobController.text);
//     await prefs.setString('country', selectedCountry);
//   }
//
//   Future<void> _pickImage() async {
//     final XFile? image = await _imagePicker.pickImage(
//       source: ImageSource.gallery,
//       imageQuality: 80,
//     );
//     if (image != null) {
//       setState(() {
//         _pickedImage = File(image.path);
//       });
//     }
//   }
//
//   Future<void> _loadProfileData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       nameController.text = prefs.getString('name') ?? "";
//       emailController.text = prefs.getString('email') ?? "";
//       passwordController.text = prefs.getString('password') ?? "";
//       dobController.text = prefs.getString('dob') ?? "";
//       selectedCountry = prefs.getString('country') ?? "Select Country";
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _loadProfileData();
//   }
//
//   List<String> countries = [
//     "Pakistan", "India", "Bangladesh", "Afghanistan", "Sri Lanka",
//     "Nepal", "Bhutan", "Maldives", "China", "Japan", "South Korea",
//     "North Korea", "Indonesia", "Malaysia", "Singapore", "Thailand",
//     "Myanmar (Burma)", "Vietnam", "Philippines", "Mongolia"
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
//           backgroundColor: AppColor.green118844,
//           centerTitle: true,
//           title: const Text("Edit Profile"),
//           iconTheme: IconThemeData(color: AppColor.whiteFFFFFF),
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(Icons.arrow_back_ios),
//           ),
//         ),
//         backgroundColor: AppColor.whiteFFFFFF,
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   AnimatedStackCircularProgressBar(
//                     size: 130,
//                     progressStrokeWidth: 5,
//                     backStrokeWidth: 5,
//                     startAngle: 0,
//                     backColor: const Color(0xffD7DEE7),
//                     bars: [
//                       AnimatedBarValue(
//                         barColor: AppColor.green118844,
//                         barValues: 100,
//                         fullProgressColors: Colors.red,
//                       ),
//                     ],
//                   ),
//                   CircleAvatar(
//                     radius: 60,
//                     backgroundImage: _pickedImage != null
//                         ? FileImage(_pickedImage!)
//                         : const AssetImage("assets/images/AliHasanain.jpg")
//                     as ImageProvider,
//                   ),
//                   Positioned(
//                     bottom: h * 0.020,
//                     right: w * 0.01,
//                     child: GestureDetector(
//                       onTap: _pickImage,
//                       child: Container(
//                         width: w * 0.10,
//                         height: h * 0.05,
//                         decoration: BoxDecoration(
//                           color: AppColor.green118844,
//                           shape: BoxShape.circle,
//                           border: Border.all(color: Colors.white, width: 2),
//                         ),
//                         child: const Icon(
//                           Icons.camera_alt,
//                           color: Colors.white,
//                           size: 20,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               buildProfileTextField(controller: nameController, defaultHint: "Name"),
//               buildProfileTextField(controller: emailController, defaultHint: "Email"),
//               buildProfileTextField(controller: passwordController, defaultHint: "Password", obscureText: true),
//               buildProfileTextField(controller: dobController, defaultHint: "Date of Birth"),
//               buildProfileTextField(controller: TextEditingController(text: selectedCountry), defaultHint: "Select Country"),
//               SizedBox(height: h * 0.02),
//               ElevatedButton(onPressed: _saveProfileData, child: Text("Save Changing"))
//               // CommonButton(
//               //   text: "Save Changes",
//               //   press: _saveProfileData, // ✅ Use the correct parameter name
//               // )
//               SizedBox(height: h * 0.02),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   /// **Custom TextField Widget**
//   Widget buildProfileTextField({
//     required TextEditingController controller,
//     required String defaultHint,
//     bool obscureText = false,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       child: TextField(
//         controller: controller,
//         obscureText: obscureText,
//         decoration: InputDecoration(
//           hintText: controller.text.isNotEmpty ? controller.text : defaultHint,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//           filled: true,
//           fillColor: Colors.grey[200],
//           contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//         ),
//       ),
//     );
//   }
// }
