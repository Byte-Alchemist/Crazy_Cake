import 'package:flutter/material.dart';

class profile_details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Back button action (can use Get.back() with GetX)
          },
        ),
        title: Text(
          "Profile Information",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // Done button action
            },
            child: Text(
              "Done",
              style: TextStyle(color: Colors.orange),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Picture with Camera Icon
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://via.placeholder.com/150", // Replace with real image URL
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 18,
                  child: IconButton(
                    icon: Icon(Icons.camera_alt, color: Colors.white, size: 18),
                    onPressed: () {
                      // Camera button action
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Profile Info Card
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  _buildProfileField("Username", "Cameron Cook"),
                  _buildProfileField("Email", "darrell_bailey@gmail.com"),
                  _buildProfileField("Phone", "+65 39879 343"),
                  _buildProfileField("Gender", "Female"),
                  _buildProfileField("Date of birth", "16/04/1988"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build a profile field with label and value
  Widget _buildProfileField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          SizedBox(height: 5),
          Text(
            value,
            style: TextStyle(fontSize: 16),
          ),
          Divider(thickness: 1, color: Colors.grey[200]),
        ],
      ),
    );
  }
}
