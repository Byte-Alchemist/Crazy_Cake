import 'package:crazy_cake/theme/app_theme.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController{

  RxBool isLightTheme = false.obs;

  void changeTheme(bool isLight){
    Get.changeTheme(isLightTheme.value ? darkTheme : lightTheme);
    isLightTheme.value = isLight;
  }
}