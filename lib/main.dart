import 'package:flutter/material.dart';
import 'package:greenfiy/app_screen/bottom_bar_screen/bottom_bar_screen.dart';
import 'package:greenfiy/app_screen/cart_screen/cart_screen.dart';
import 'package:greenfiy/app_screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:greenfiy/app_screen/garden_kit_screen/garden_kit_screen.dart';
import 'package:greenfiy/app_screen/profile_screen/profile_screen.dart';
import 'package:greenfiy/app_screen/select_login_sign_up/select_login_sign_up.dart';
import 'package:greenfiy/app_screen/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:greenfiy/app_screen/wishlist_screen/wishlist_screen.dart';

import 'app_screen/detail_screen/detail_screen.dart';
import 'app_screen/home_screen/home_screen.dart';
import 'app_screen/order_complete_screen/order_complete_screen.dart';

main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(home: GreenifyApp(),));
}
class GreenifyApp extends StatefulWidget {
  const GreenifyApp({super.key});

  @override
  State<GreenifyApp> createState() => _GreenifyAppState();
}

class _GreenifyAppState extends State<GreenifyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
