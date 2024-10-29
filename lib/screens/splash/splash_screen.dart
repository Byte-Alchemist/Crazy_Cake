import 'package:crazy_cake/controller/token_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var token = ApiPref().getuserToken();

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), checkTokenAndNavigate);
  }

  void checkTokenAndNavigate() {
    token.then((value) {// Debug print to confirm null
      if (value.isNotEmpty) {
        Get.offAllNamed('/home');
      } else {
        Get.offAllNamed('/');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4c5270),
      body: Center(
        child: 
            Image.asset('assets/image/splash.png',fit: BoxFit.cover,),
      ),
    );
  }
}
