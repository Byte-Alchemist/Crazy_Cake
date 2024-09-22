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
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "jost"),
        initialRoute: "/",
        getPages: [
          GetPage(
              name: "/",
              page: () => const OnboardPage(),
              transition: Transition.zoom,
              transitionDuration: const Duration(seconds: 3)),
          GetPage(
              name: "/login",
              page: () => const LoginScreen(),
              transition: Transition.fadeIn,
              transitionDuration: const Duration(seconds: 3)),
          GetPage(name: "/home", page: () => const HomeScreen()),
          GetPage(
              name: "/register",
              page: () => const UserRegistrationScreen(),
              transition: Transition.fade,
              transitionDuration: const Duration(seconds: 3)),
          GetPage(
              name: "/otpVerification",
              page: () => const OtpVerficationPage(),
              transition: Transition.downToUp,
              transitionDuration: const Duration(seconds: 3))
        ]);
  }
}
