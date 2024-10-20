import 'package:crazy_cake/models/otpverification_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class OtpController extends GetxController {
  var isLoading = false.obs;
  final String baseURL = "http://13.126.26.55";

  Future<void> verifyOTP(OTPVerificationModel otpVerificationModel) async {
    isLoading(true);
    try {
      final url = Uri.parse('$baseURL/auth/v1/verify-user');
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
        },
        body: jsonEncode(otpVerificationModel.toJson()),
      );
      final responseData = jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Get.snackbar(
          backgroundColor: Colors.green,
          'Success', 'OTP Verified Successfully');
        Get.toNamed('/home');
      } else if (response.statusCode == 404) {
        Get.snackbar(
          backgroundColor: Colors.red,
          "Verification failed" , "Invalid OTP");
      }
    } catch (e) {
      Get.snackbar('Error', 'Something went wrong, please try again');
    } finally {
      isLoading(false);
    }
  }
}
