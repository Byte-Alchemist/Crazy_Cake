import 'package:crazy_cake/controller/token_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Account'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: 340,
              width: double.infinity,
              color: Colors.grey[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Abir",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(05),
                        ),
                      ),
                      onPressed: () {
                        Get.toNamed("/profileDetails");
                      },
                      child: const Text(
                        "View Profile",
                        style: TextStyle(color: Colors.white),
                      )),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildIconButton(
                          Icons.shopping_cart_checkout_outlined, "Orders"),
                      _buildIconButton(Icons.favorite, "Favourits"),
                      _buildIconButton(Icons.notifications, "Notifications"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 0.5),
                      color: Colors.white,
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.payment,
                          size: 20,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Refund amount"),
                        Spacer(),
                        Text(
                          "₹ 0.00",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Perks for you",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildListTile(
                      Icons.star_border_rounded, "Premium Subscription"),
                  const Divider(),
                  _buildListTile(Icons.card_giftcard, "Gift Cards"),
                  const Divider(),
                  _buildListTile(Icons.card_giftcard, "Gift Cards"),
                  const Divider(),
                  _buildListTile(Icons.local_offer, "Vouchers"),
                  const Divider(),
                  _buildListTile(Icons.inventory_outlined, "Invite Friends"),
                  const Divider(),
                  const Text(
                    "General",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildListTile(Icons.question_mark_rounded, "Help & Support"),
                  const Divider(),
                  _buildListTile(Icons.build_circle_rounded, "For Buisness"),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Colors.black, width: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(05),
                          ),
                        ),
                        onPressed: () {
                          showDynamicDialog(
                            title: 'Logout',
                            content: 'Are you sure you want to logout?',
                            onConfirm: () {
                              ApiPref().removeUserToken();
                              Get.offAllNamed('/login');
                            },
                            cancelText: "No",
                            confirmText: "Yes",
                            
                          );
                        },
                        child: const Text(
                          "Logout",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                      alignment: Alignment.center,
                      child: Text("Version 1.0.0",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ))),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String text) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 0.5),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 20),
            const SizedBox(
              height: 10,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(IconData icon, String text) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.red,
      ),
      title: Text(text),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }

  void showDynamicDialog({
    required String title,
    required String content,
    required VoidCallback onConfirm,
    String confirmText = 'Confirm',
    String cancelText = 'Cancel',
    bool barrierDismissible = true,
  }) {
    Get.defaultDialog(
      backgroundColor: Colors.white,
      contentPadding: const EdgeInsets.all(20),
      radius: 10,
      title: title,
      middleText: content,
      barrierDismissible: barrierDismissible,
      textCancel: cancelText,
      textConfirm: confirmText,
      confirmTextColor: Colors.white,
      onCancel: () {
        Get.back(); // Closes the dialog
      },
      onConfirm: onConfirm,
      buttonColor: Colors.red,
    );
  }
}
