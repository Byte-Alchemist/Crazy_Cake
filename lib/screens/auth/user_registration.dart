import 'package:crazy_cake/controller/auth_controller.dart';
import 'package:crazy_cake/models/user_registraion_model.dart';
import 'package:crazy_cake/utils/colors.dart';
import 'package:crazy_cake/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRegistrationScreen extends StatelessWidget {
  const UserRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController _authController = Get.put(AuthController());

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.white,
      appBar: AppBar(
        title: const Text("Register Your Account"),
        centerTitle: true,
        backgroundColor: AppColor.white,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
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
                        "Register your account",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    _buildTextField(
                      controller: _authController.nameController,
                      labelText: "Full Name",
                      hintText: "Enter your Full name",
                      validator: (value) =>
                          value!.isEmpty ? "Please enter your Full Name" : null,
                    ),
                    const SizedBox(height: 5),
                    _buildTextField(
                      controller: _authController.phoneController,
                      labelText: "Phone Number",
                      hintText: "Enter your Phone Number",
                      validator: (value) => value!.isEmpty
                          ? "Please enter your Phone Number"
                          : null,
                    ),
                    const SizedBox(height: 5),
                    Obx(() => _buildPasswordField(
                          controller: _authController.passwordController,
                          obscureText: _authController.obscureText.value,
                          onToggle: _authController.togglePasswordVisibility,
                          labelText: "Password",
                          hintText: "Enter Your Password",
                          validator: (value) => value!.isEmpty
                              ? "Please enter your Password"
                              : null,
                        )),
                    const SizedBox(height: 5),
                    Obx(() => _buildPasswordField(
                          controller: _authController.confirmPasswordController,
                          obscureText: _authController.obscureText.value,
                          onToggle: _authController.togglePasswordVisibility,
                          labelText: "Confirm Password",
                          hintText: "Confirm Password",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your Confirm Password";
                            }
                            if (value !=
                                _authController.passwordController.text) {
                              return "Passwords do not match";
                            }
                            return null;
                          },
                        )),
                    const SizedBox(height: 20),
                    Center(
                      child: SizedBox(
                        width: 320,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            backgroundColor: AppColor.primary,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 10,
                            ),
                          ),
                          onPressed: () {
                            if (_authController.formKey.currentState!
                                .validate()) {
                              final UserRegistraionModel userRegistraionModel =
                                  UserRegistraionModel(
                                fullName: _authController.nameController.text,
                                phoneNumber:
                                    _authController.phoneController.text,
                                password:
                                    _authController.passwordController.text,
                              );
                              _authController
                                  .userRegister(userRegistraionModel);
                            }
                          },
                          child: Obx(
                            () => _authController.isLoading.value
                                ? KloadindIndicator()
                                : const Text(
                                    "Register",
                                    style: TextStyle(
                                      color: AppColor.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Center(
                      child: Text(
                        "Or sign up with",
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    required String hintText,
    required String? Function(String?) validator,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColor.grey, width: 0.2),
          boxShadow: [
            BoxShadow(
              color: AppColor.black.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            labelText: labelText,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.darkGreen),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField({
    required TextEditingController controller,
    required bool obscureText,
    required void Function() onToggle,
    required String labelText,
    required String hintText,
    required String? Function(String?) validator,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColor.darkGreen, width: 0.2),
          boxShadow: [
            BoxShadow(
              color: AppColor.black.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: TextFormField(
          controller: controller,
          validator: validator,
          obscureText: obscureText,
          decoration: InputDecoration(
            fillColor: AppColor.white,
            filled: true,
            suffixIcon: IconButton(
              icon: Icon(
                obscureText ? Icons.visibility : Icons.visibility_off,
                color: AppColor.grey,
              ),
              onPressed: onToggle,
            ),
            hintText: hintText,
            labelText: labelText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
