import 'dart:convert';
import 'package:crazy_cake/controller/token_controller.dart';
import 'package:crazy_cake/models/user_login_model.dart';
import 'package:crazy_cake/models/user_registraion_model.dart';
import 'package:crazy_cake/screens/auth/Otp_verfication.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  static const String baseURL = 'http://13.233.15.222';

  // Observables and form management
  final isLoading = false.obs;
  final obscureText = true.obs;
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final confirmPasswordController = TextEditingController();

  // Toggle password visibility
  void togglePasswordVisibility() => obscureText.toggle();

  // Register user function
  Future<void> userRegister(UserRegistraionModel userRegisterModel) async {
    isLoading(true);
    try {
      var url = Uri.parse('$baseURL/auth/v1/register');
      var response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
        },
        body: jsonEncode(userRegisterModel.toJson()),
      );

      var responseData = jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Get.snackbar(
          'Success',
          'An OTP has been sent to your phone number',
          backgroundColor: Colors.blue,
          colorText: Colors.white,
        );
        Get.offAll(() =>
            OtpVerficationPage(phoneNumber: userRegisterModel.phoneNumber));
      } else {
        Get.snackbar('Error', responseData["detail"],
            backgroundColor: Colors.red);
      }
    } catch (e) {
      Get.snackbar('Error', 'Something went wrong, please try again',
          backgroundColor: Colors.red);
    } finally {
      isLoading(false);
    }
  }

  // User login function
  Future<void> userLogin(UserLoginModel userLoginModel) async {
    isLoading(true);
    try {
      var url = Uri.parse('$baseURL/auth/v1/login');
      var response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
        },
        body: jsonEncode(userLoginModel.toJson()),
      );

      var responseData = jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var token = responseData['token']?["access_token"];
        if (token != null) {
          ApiPref().setUserToken(token);
          Get.snackbar(
            'Success',
            'Logged in Successfully',
            backgroundColor: Colors.green,
            colorText: Colors.white,
          );
          Get.offAllNamed('/home');
        } else {
          Get.snackbar('Error', 'Token not found', backgroundColor: Colors.red);
        }
      } else {
        Get.snackbar('Error', responseData["detail"],
            backgroundColor: Colors.red);
      }
    } catch (e) {
      Get.snackbar('Error', 'Something went wrong, please try again',
          backgroundColor: Colors.red);
    } finally {
      isLoading(false);
    }
  }

  @override
  void onClose() {
    phoneController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
