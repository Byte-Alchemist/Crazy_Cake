import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Card(
              color: Colors.white,
              shadowColor: Colors.black,
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  "Name",
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Text(
                  "John Doe",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.edit),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              margin: const EdgeInsets.all(10),
              child: ListTile(
                title: const Text(
                  "Email",
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "abit43939@gmail.com",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                        "Verified",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                trailing: const Icon(Icons.edit),
              ),
            ),
            const Card(
              color: Colors.white,
              shadowColor: Colors.black,
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  "Password",
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Text(
                  "********",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.edit),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              margin: const EdgeInsets.all(10),
              child: ListTile(
                title: const Text(
                  "Mobile Number",
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "+91 9876543210",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                        "Verified",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                trailing: const Icon(Icons.edit),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Connected Accounts",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              margin: const EdgeInsets.all(10),
              child: ListTile(
                title: const Text(
                  "Facebook",
                  style: TextStyle(fontSize: 15),
                ),
                trailing: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Connect",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                leading: const Icon(Icons.facebook),
              ),
            ),
            const Card(
              color: Colors.white,
              shadowColor: Colors.black,
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  "Google",
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Text(
                    "Connected",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold , color: Colors.green),
                  ),
                leading: Icon(Icons.g_translate),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
