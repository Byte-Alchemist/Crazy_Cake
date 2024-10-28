import 'package:crazy_cake/controller/network_Contoller.dart';
import 'package:crazy_cake/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(NetworkController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(05),
              ),
              backgroundColor: const Color(0xff5C1919),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            ),
          ),
          primarySwatch: Colors.blue,
          fontFamily: "jost"),
      initialRoute: "/splash",
      getPages: AppRoutes.routes,
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}
