import 'package:crazy_cake/controller/network_Contoller.dart';
import 'package:crazy_cake/routes/routes.dart';
import 'package:crazy_cake/theme/app_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(NetworkController(), permanent: true);
  runApp(DevicePreview(
    enabled: !kReleaseMode,
     backgroundColor: Colors.white,
     defaultDevice: Devices.ios.iPhone13ProMax,
      isToolbarVisible: true,
      availableLocales: const [Locale('en', 'US')],
       tools: const [
        // Device selection controls
        DeviceSection(
          model: true, // Option to change device model to fit your needs
          orientation: false, // Lock to portrait for consistent demo
          frameVisibility: false, // Hide frame options
          virtualKeyboard: false, // Hide keyboard
        ),
       ],
        devices: [
      // ... Devices.all, // uncomment to see all devices

      // Popular Android Devices
      Devices.android.samsungGalaxyA50, // Mid-range
      Devices.android.samsungGalaxyNote20, // Large screen
      Devices.android.samsungGalaxyS20, // Flagship
      Devices.android.samsungGalaxyNote20Ultra, // Premium
      Devices.android.onePlus8Pro, // Different aspect ratio
      Devices.android.sonyXperia1II, // Tall screen

      // Popular iOS Devices
      Devices.ios.iPhoneSE, // Small screen
      Devices.ios.iPhone12, // Standard size
      Devices.ios.iPhone12Mini, // Compact
      Devices.ios.iPhone12ProMax, // Large
      Devices.ios.iPhone13, // Latest standard
      Devices.ios.iPhone13ProMax, // Latest large
      Devices.ios.iPhone13Mini, // Latest compact
      Devices.ios.iPhoneSE, // Budget option
    ],
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context), 
      builder: DevicePreview.appBuilder,
      darkTheme: darkTheme,
      theme: lightTheme,
      initialRoute: "/splash",
      getPages: AppRoutes.routes,
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}
