import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OtpVerficationPage extends StatefulWidget {
  const OtpVerficationPage({super.key});

  @override
  State<OtpVerficationPage> createState() => _OtpVerficationPageState();
}

class _OtpVerficationPageState extends State<OtpVerficationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Otp Verification"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 28.0, right: 28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 2,
                child: Image.asset(
                  "assets/image/otp.jpg",
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Otp Verification",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff5C1919)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Enter the OTP sent to +91 1234567890",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Color(0xff5C1919)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Pinput(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the next screen
                    Get.toNamed("/home");
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(05),
                    ),
                    backgroundColor: const Color(0xff5C1919),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                  ),
                  child: const Text(
                    "Verify",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Didn't receive the OTP?"),
                  TextButton(onPressed: () {}, child: const Text("Resend OTP"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
