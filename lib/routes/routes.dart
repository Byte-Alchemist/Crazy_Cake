import 'package:crazy_cake/screens/auth/Otp_verfication.dart';
import 'package:crazy_cake/home/dashboard.dart';
import 'package:crazy_cake/screens/auth/login_screen.dart';
import 'package:crazy_cake/screens/splash/onboard.dart';
import 'package:crazy_cake/screens/profile/profile_details.dart';
import 'package:crazy_cake/screens/profile/profile_screen.dart';
import 'package:crazy_cake/screens/auth/user_registration.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(
        name: "/",
        page: () => const OnboardPage(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 500)),
       
    GetPage(
        name: "/login",
        page: () => const LoginScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(name: "/home", page: () => const DashboardScreen()),
    GetPage(
        name: "/register",
        page: () => const UserRegistrationScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: "/otpVerification",
        page: () => const OtpVerficationPage(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: "/dashboard",
        page: () => const DashboardScreen(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: "/profile",
        page: () => const ProfileScreen(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: "/editProfile",
        page: () => const ProfileDetails(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(seconds: 1)),
  ];
}
