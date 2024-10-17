import 'package:crazy_cake/controller/token_controller.dart';
import 'package:crazy_cake/models/login_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class AuthController extends GetxController {

RxBool isLoading = false.obs;




  Future<void> UserLogin(LoginModel loginModel) async {
    try {
      isLoading(true);
      String url = 'https://api.crazy-cake.com/api/login';
        final response = await http.post(Uri.parse(url),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(loginModel.toJson()));
            if (response.statusCode == 200) {
              final Responsedata = json.decode(response.body);  
              String token = Responsedata['token'];
              await ApiPref().setUserToken(token);
               Get.snackbar('Success', 'Login Successful');
              Get.toNamed('/home');

            } else {
              Get.snackbar('Error', 'Login Failed');
            }
   
    } catch (e) {
      Get.snackbar('Error', 'Login Failed');
    }finally{
      isLoading(false);
    }
  }
}
