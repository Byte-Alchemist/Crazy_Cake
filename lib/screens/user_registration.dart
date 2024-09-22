import 'package:crazy_cake/widgets/kText_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRegistrationScreen extends StatefulWidget {
  const UserRegistrationScreen({super.key});

  @override
  State<UserRegistrationScreen> createState() => _UserRegistrationScreenState();
}

class _UserRegistrationScreenState extends State<UserRegistrationScreen> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Register Your Account"),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28.0),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                AspectRatio(
                  aspectRatio: 2,
                  child: Image.asset(
                    "assets/image/login.jpeg",
                    height: 100,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Register your account",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff5C1919)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                kTextField("Enter your Email", "Email"),
                const SizedBox(
                  height: 5,
                ),
                kTextField("Enter your Phone Number", "Phone Number"),
                const SizedBox(
                  height: 5,
                ),
                _passwordField("Enter your password", "Password"),
                const SizedBox(
                  height: 5,
                ),
                _passwordField("Confirm Password", "Confirm Password"),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: 320,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(05),
                          ),
                          backgroundColor: const Color(0xff5C1919),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                        ),
                        onPressed: () {
                          Get.toNamed("/otpVerification");
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w300),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  "Or sign up with",
                  style: TextStyle(color: Colors.grey.shade400),
                  textAlign: TextAlign.center,
                )),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/image/google.png",
                      height: 40,
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      "assets/image/facebook.png",
                      height: 30,
                    ),
                  ],
                ),
              ]),
            )),
          ),
        ));
  }

  Widget _passwordField(String hintText, String labelText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xff40573A), width: 0.2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              blurRadius: 5, // Shadow blur effect
              offset: const Offset(0, 4), // Shadow position
            ),
          ],
        ),
        child: TextField(
          obscureText: _obscureText,
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
              hintText: hintText,
              labelText: labelText,
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)))),
        ),
      ),
    );
  }
}
