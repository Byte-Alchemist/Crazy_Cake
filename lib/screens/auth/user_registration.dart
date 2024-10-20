import 'package:crazy_cake/controller/auth_controller.dart';
import 'package:crazy_cake/models/user_registraion_model.dart';
import 'package:crazy_cake/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRegistrationScreen extends StatefulWidget {
  const UserRegistrationScreen({super.key});

  @override
  State<UserRegistrationScreen> createState() => _UserRegistrationScreenState();
}

class _UserRegistrationScreenState extends State<UserRegistrationScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  final AuthController _authController = Get.put(AuthController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
  }

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
              child: Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color(0xff40573A), width: 0.2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.2), // Shadow color
                                blurRadius: 5, // Shadow blur effect
                                offset: const Offset(0, 4), // Shadow position
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _nameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your Full Name";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Enter your Full name",
                                labelText: "Full Name",
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff40573A)),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)))),
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
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color(0xff40573A), width: 0.2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.2), // Shadow color
                                blurRadius: 5, // Shadow blur effect
                                offset: const Offset(0, 4), // Shadow position
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _phoneController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your Phone Number";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Enter your Phone Number",
                                labelText: "Phone Number",
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff40573A)),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)))),
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
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color(0xff40573A), width: 0.2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.2), // Shadow color
                                blurRadius: 5, // Shadow blur effect
                                offset: const Offset(0, 4), // Shadow position
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _passwordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your Password";
                              }
                              return null;
                            },
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                ),
                                hintText: "Enter Your Password",
                                labelText: "Password",
                                border: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)))),
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
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color(0xff40573A), width: 0.2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.2), // Shadow color
                                blurRadius: 5, // Shadow blur effect
                                offset: const Offset(0, 4), // Shadow position
                              ),
                            ],
                          ),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your Confirm Password";
                              }
                              if (value != _passwordController.text) {
                                return "Passwords do not match";
                              }
                              return null;
                            },
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                ),
                                hintText: "Confirm Password",
                                labelText: "Confirm Password",
                                border: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)))),
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
                                      if (_formKey.currentState!.validate()) {
                                        final UserRegistraionModel
                                            userRegistraionModel =
                                            UserRegistraionModel(
                                          fullName: _nameController.text,
                                          phoneNumber: _phoneController.text,
                                          password: _passwordController.text,
                                        );
                                        _authController.UserRegister(
                                            userRegistraionModel);
                                      }
                                    },
                                    child: Obx(
                                      ()=> _authController.isLoading.value? KloadindIndicator() : const Text(
                                        "Register",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300),
                                      ),
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
              ),
            )),
          ),
        ));
  }
}
