import 'package:crazy_cake/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Register Your Account"),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
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
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff40573A), width: 0.2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 5, // Shadow blur effect
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                      hintText: "Enter your Email",
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff40573A)),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff40573A), width: 0.2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 5, // Shadow blur effect
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                      hintText: "Phone Number",
                      labelText: "Phone Number",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff40573A)),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                   decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff40573A), width: 0.2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 5, // Shadow blur effect
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
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
                      hintText: "Enter your Password",
                      labelText: "Password",
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff40573A) , width: 0.2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Shadow color
                          blurRadius: 5, // Shadow blur effect
                          offset: Offset(0, 4), // Shadow position
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
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
                      hintText: "Confirm your Password",
                      labelText: "Confirm Password",
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                ),
              ),
            ),
            SizedBox(
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
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              "Or sign up with",
              style: TextStyle(color: Colors.grey.shade400),
              textAlign: TextAlign.center,
            )),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/image/google.png",
                  height: 40,
                ),
                SizedBox(width: 20),
                Image.asset(
                  "assets/image/facebook.png",
                  height: 30,
                ),
              ],
            ),
          ]),
        )));
  }
}
