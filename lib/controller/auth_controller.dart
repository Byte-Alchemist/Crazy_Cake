import 'dart:convert';
import 'dart:math';

import 'package:crazy_cake/controller/token_controller.dart';
import 'package:crazy_cake/models/user_login_model.dart';
import 'package:crazy_cake/models/user_registraion_model.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  static final String baseURL = 'http://65.1.136.101';

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
      if (response.statusCode == 200 || response.statusCode == 201) {
        Get.snackbar('Success', 'User Registered Successfully');
        Get.toNamed('/login');
      } else {
        Get.snackbar('Error', '${response.body}');
      }
    } catch (e) {
      Get.snackbar('Error exception', 'Failed with error $e');
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
       if(token != null && token is String){
         ApiPref().setUserToken(token);
         Get.snackbar('Success', 'User Logged in Successfully');
         Get.toNamed('/home');
        }else{
          Get.snackbar('Error', 'Token not found');
        }

     
      } else {
        Get.snackbar('Error', '${response.body}');
      }
    } catch (e) {
       debugPrint('Error: $e');  
      Get.snackbar('Error exception', 'Failed with error $e');
    } finally {
      isLoading(false);
    }
  }
}
