import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingController extends GetxController {
  var isLoading = false.obs;

  void showLoading() {
    isLoading.value = true;
    Get.rawSnackbar(
      backgroundColor: Colors.black54,
    
      snackPosition: SnackPosition.TOP,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      duration: const Duration(minutes: 10), // Keep it for a long time
      isDismissible: false,
      overlayColor: Colors.black54,// Hide main button
      messageText:Container(
  width: double.infinity,
 height: Get.size.height,
  color: Colors.black54,
  child: const Center(
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
    ),
  ),
),

      titleText: Container(),
    );
  }

  void hideLoading() {
    isLoading.value = false;
    Get.back();
  }
}