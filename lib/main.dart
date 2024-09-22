
import 'package:crazy_cake/screens/Otp_verfication.dart';
import 'package:crazy_cake/screens/home_screen.dart';
import 'package:crazy_cake/screens/login_screen.dart';
import 'package:crazy_cake/screens/onboard.dart';
import 'package:crazy_cake/screens/user_registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
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
      GetPage(name: "/", page: () => const OnboardPage()),
      GetPage(name: "/login", page: () => const LoginScreen()),
      GetPage(name: "/home", page: () => const HomeScreen()),
      GetPage(name: "/register" , page: () => const UserRegistrationScreen()),
      GetPage(name: "/otpVerification", page: () => const OtpVerficationPage())
    ]
      );
  }
}
