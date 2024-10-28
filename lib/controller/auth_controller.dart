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

  RxBool isLoading = false.obs;

  Future<void> UserRegister(UserRegistraionModel userRegisterModel) async {
    try {

      isLoading(true);
      var url = Uri.parse('$baseURL/auth/v1/register');
      var response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
            'accept': 'application/json',
          },
          body: jsonEncode(userRegisterModel.toJson()));

      var responseData = jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var responseData = jsonDecode(response.body);
        Get.snackbar(
            backgroundColor: Colors.blue,
            colorText: Colors.white,
            'Success',
            'A OTP has been sent to your phone number');
        Get.offAll(() => OtpVerficationPage(
            phoneNumber: userRegisterModel.phoneNumber.toString()));
      } else {
        Get.snackbar('Error', responseData["detail"]);
      }
    } catch (e) {
      Get.snackbar(
          backgroundColor: Colors.red,
          "Error",
          'Something went wrong , please try again');
    } finally {
      isLoading(false);
    }
  }

  Future<void> UserLogin(UserLoginModel userLoginModel) async {
    try {
      isLoading(true);
      var url = Uri.parse('$baseURL/auth/v1/login');
      var response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
            'accept': 'application/json',
          },
          body: jsonEncode(userLoginModel.toJson()));
      if (response.statusCode == 200 || response.statusCode == 201) {
        var responseData = jsonDecode(response.body);
        var token = responseData['token']["access_token"];
        print(token);
        ApiPref().setUserToken(token);
        Get.snackbar(
            backgroundColor: Colors.green, 'Success', 'Logged in Successfully');
        Get.offAllNamed('/home');
      } else {
        
        var responseData = jsonDecode(response.body);
        Get.snackbar(backgroundColor: Colors.red, "Error", responseData["detail"]);
      }
    } catch (e) {
      Get.snackbar(
          backgroundColor: Colors.red,
          "Error",
          'Something went wrong , please try again');
    } finally {
      isLoading(false);
    }
  }
}
