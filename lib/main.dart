
import 'package:crazy_cake/screens/Otp_verfication.dart';
import 'package:crazy_cake/screens/home_screen.dart';
import 'package:crazy_cake/screens/login_screen.dart';
import 'package:crazy_cake/screens/onboard.dart';
import 'package:crazy_cake/screens/user_registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
   debugShowCheckedModeBanner: false,
   theme: ThemeData(
     primarySwatch: Colors.blue,
     fontFamily: "jost"
   ),
   initialRoute: "/",
    getPages: [
      GetPage(name: "/", page: () => OnboardPage()),
      GetPage(name: "/login", page: () => LoginScreen()),
      GetPage(name: "/home", page: () => HomeScreen()),
      GetPage(name: "/register" , page: () => UserRegistrationScreen()),
      GetPage(name: "/otpVerification", page: () => OtpVerficationPage())
    ]
      );
  }
}
