import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text("Otp Verification"),
        centerTitle: true,
      ),  
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 28.0, right: 28.0),
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
            SizedBox(
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
              SizedBox(
              height: 10,
            ),
            const Text(
                "Enter the OTP sent to +91 1234567890",
                 textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff5C1919)),
              ),
           
            SizedBox(
              height: 20,
            ),
            Pinput(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the next screen
                },
                child: Text("Verify" , style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,

                ),),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(05),
                    ),
                    backgroundColor: const Color(0xff5C1919),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                  ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't receive the OTP?"),
                TextButton(onPressed: () {}, child: Text("Resend OTP"))
              ],
            )
            ],
          ),
          ),
      ),
    );
  }
}