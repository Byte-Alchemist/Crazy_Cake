import 'package:crazy_cake/screens/edit_profile.dart';
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
                  image: AssetImage('assets/image/black.jpg'),
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
          SizedBox(
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
                      Get.to(profile_details());
                    }),
                    kElevatedButton('Favourites', Icons.heat_pump_sharp, () {}),
                    kElevatedButton('Orders', Icons.carpenter, () {}),
                    kElevatedButton('About Us', Icons.subscript, () {}),
                    kElevatedButton('Privacy Policy', Icons.privacy_tip, () {}),
                    kElevatedButton('Logout', Icons.logout, () {}),
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
          side: BorderSide(color: Colors.black),
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
          SizedBox(
            width: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
