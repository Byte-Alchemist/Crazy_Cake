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
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Logout'),
          content: const Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                // Close the dialog without any action
                Navigator.of(context).pop();
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                // Handle the logout action
                Navigator.of(context).pop(); // Close the dialog
                Get.snackbar(
                  backgroundColor: Colors.green,
                  'Logged out', 'You have been logged out');
                Get.offAllNamed('/login');
                // Perform your logout functionality here
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
