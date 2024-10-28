import 'package:crazy_cake/screens/account/account_Screen.dart';
import 'package:crazy_cake/screens/auth/Otp_verfication.dart';
import 'package:crazy_cake/home/dashboard.dart';
import 'package:crazy_cake/screens/auth/login_screen.dart';
import 'package:crazy_cake/screens/product/product_details.dart';
import 'package:crazy_cake/screens/splash/onboard.dart';
import 'package:crazy_cake/screens/profile/profile_details.dart';
import 'package:crazy_cake/screens/auth/user_registration.dart';
import 'package:crazy_cake/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: "/splash", page: () => SplashScreen()),
    GetPage(
        name: "/",
        page: () => const OnboardPage(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 300)),
    GetPage(
        name: "/login",
        page: () => const LoginScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 300)),
    GetPage(
        name: "/home",
        page: () => const DashboardScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 300)),
    GetPage(
        name: "/register",
        page: () => const UserRegistrationScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 300)),
    GetPage(
        name: "/otpVerification",
        page: () => const OtpVerficationPage(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(milliseconds: 300)),
    GetPage(
        name: "/dashboard",
        page: () => const DashboardScreen(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 600)),
    GetPage(
        name: "/account",
        page: () => const AccountScreen(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 300)),
        GetPage(
        name: "/profileDetails",
        page: () => const ProfileDetails(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 300)),
        GetPage(
        name: "/account",
        page: () => const AccountScreen(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 300)),
        GetPage(
          name: "/productDetails",
          page: () => const ProductDetails(),
          transition: Transition.fade,
          transitionDuration: const Duration(milliseconds: 300)),
          
        
  ];
}
