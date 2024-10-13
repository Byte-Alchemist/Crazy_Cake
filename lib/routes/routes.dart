import 'package:crazy_cake/screens/Otp_verfication.dart';
import 'package:crazy_cake/screens/dashboard.dart';
import 'package:crazy_cake/screens/login_screen.dart';
import 'package:crazy_cake/screens/onboard.dart';
import 'package:crazy_cake/screens/user_registration.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
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
    GetPage(name: "/home", page: () => const DashboardScreen()),
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
  ];
}
