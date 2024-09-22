import 'package:crazy_cake/widgets/kText_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Login Screen"),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(28.0),
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
                "Login to your account",
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
       Padding(
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
          hintText: "Enter your Password",
          labelText: "Password",
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff40573A)),
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: Colors.black,
            ),
            onPressed: _togglePasswordVisibility,
          ),
        ),
      ),
    ),
  ),
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
                      Get.toNamed("/home");
                    },
                    child: const Text(
                      "Login",
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
              "Or sign in with",
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
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Get.toNamed("/register");
                  },
                  child: const Text("Register"),
                ),
              ],
            ),
          ]),
        )));
  }
}
//   hintText: "Enter your Email",  labelText: "Email"
                      
                    