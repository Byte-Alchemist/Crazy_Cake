import 'package:crazy_cake/controller/auth_controller.dart';
import 'package:crazy_cake/models/user_login_model.dart';
import 'package:crazy_cake/utils/colors.dart';
import 'package:crazy_cake/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Login Screen"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Form(
                  key: _authController.formKey,
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
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Login to your account",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primary
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: AppColor.darkGreen, width: 0.2),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.black.withOpacity(0.2),
                                blurRadius: 5,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: _authController.phoneController,
                            decoration: const InputDecoration(
                              fillColor: AppColor.white,
                              filled: true,
                              hintText: "Enter your Phone Number",
                              labelText: "Phone Number",
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.darkGreen),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: AppColor.darkGreen, width: 0.2),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.black.withOpacity(0.2),
                                blurRadius: 5,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Obx(
                            () => TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password is required";
                                }
                                return null;
                              },
                              controller: _authController.passwordController,
                              obscureText: _authController.obscureText.value,
                              decoration: InputDecoration(
                                fillColor: AppColor.white,
                                filled: true,
                                hintText: "Enter your Password",
                                labelText: "Password",
                                border: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff40573A)),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _authController.obscureText.value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: AppColor.black
                                  ),
                                  onPressed:
                                      _authController.togglePasswordVisibility,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: SizedBox(
                          width: 320,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(05),
                              ),
                              backgroundColor: AppColor.primary,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10),
                            ),
                            onPressed: () {
                              if (_authController.formKey.currentState!
                                  .validate()) {
                                final userLoginModel = UserLoginModel(
                                  phoneNumber:
                                      _authController.phoneController.text,
                                  password:
                                      _authController.passwordController.text,
                                );
                                _authController.userLogin(userLoginModel);
                              }
                            },
                            child: Obx(
                              () => _authController.isLoading.value
                                  ? KloadindIndicator()
                                  : const Text(
                                      "Login",
                                      style: TextStyle(
                                          color: AppColor.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Center(
                        child: Text(
                          "Or sign in with",
                          style: TextStyle(color: AppColor.grey),
                          textAlign: TextAlign.center,
                        ),
                      ),
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
