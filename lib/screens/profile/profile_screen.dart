import 'package:crazy_cake/controller/token_controller.dart';
import 'package:crazy_cake/screens/profile/profile_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/cake.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/image/otp.jpg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'John Doe',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Corporate account",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    kElevatedButton(' Profile', Icons.person, () {
                      Get.to(() => const ProfileDetails());
                    }),
                    kElevatedButton('Favourites', Icons.heat_pump_sharp, () {}),
                    kElevatedButton('Orders', Icons.carpenter, () {}),
                    kElevatedButton('About Us', Icons.subscript, () {}),
                    kElevatedButton('Privacy Policy', Icons.privacy_tip, () {}),
                    kElevatedButton('Logout', Icons.logout, () {
                      _showLogoutConfirmationDialog(context);
                    }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget kElevatedButton(String text, IconData icon, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(05),
          side: const BorderSide(color: Colors.black),
        ),
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(text),
        ],
      ),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    Get.dialog(
      transitionCurve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
        barrierDismissible: false,
        Dialog(
          backgroundColor: Colors.white,
          child: Container(
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.question_mark,
                  size: 100,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Are you sure you want to logout?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        'No',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        Get.back();
                        ApiPref().removeUserToken();
                        Get.offAllNamed('/login');
                      },
                      child: const Text(
                        'Yes',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
