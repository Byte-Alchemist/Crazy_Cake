import 'package:crazy_cake/screens/cart_screen.dart';
import 'package:crazy_cake/screens/chat_screen.dart';
import 'package:crazy_cake/screens/home_screen.dart';
import 'package:crazy_cake/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int pageIndex = 0;

  void OnTapTrapped(int index) {
   setState(() {
     pageIndex = index;
   });
  }

  List _pages = [
    HomeScreen(),
    ProfileScreen(),
    CartScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[pageIndex],
      bottomNavigationBar: Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.black26,
                   size: 20,
                  )
                : const Icon(
                    Icons.home_outlined,
                   color: Colors.black26,
                    size: 20,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.shopping_cart,
                    color: Colors.black26,
                    size: 20,
                  )
                : const Icon(
                    Icons.shopping_cart_outlined,
                   color: Colors.black26,
                    size: 20,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.chat_rounded,
                    color: Colors.black26,
                    size: 20,
                  )
                : const Icon(
                    Icons.chat_outlined,
                   color: Colors.black26,
                    size: 20,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                   color: Colors.black26,
                    size: 20,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.black26,
                    size: 20,
                  ),
          ),
        ],
      ),
    )
    );
  }
}
