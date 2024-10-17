import 'package:crazy_cake/controller/token_controller.dart';
import 'package:crazy_cake/widgets/animated_dot.dart';
import 'package:crazy_cake/widgets/onboard_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  int _selectedIndex = 0;
  List<Map<String, dynamic>> data = [
    {
      "image": "assets/image/splash1.png",
      "title": "All your favourite",
      "text": "Order from the best cake shops near you"
    },
    {
      "image": "assets/image/delivery.png",
      "title": "Fast Delivery",
      "text": "Fast delivery to your doorstep"
    },
    {
      "image": "assets/image/order.png",
      "title": "Secure Payment",
      "text": "Secure payment for your order"
    }
  ];

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            SizedBox(
              height: 500,
              child: PageView.builder(
                        onPageChanged: (index) {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return OnBoardContent(
                              image: data[index]["image"],
                              title: data[index]["title"],
                              text: data[index]["text"]);
                        })
                  
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  data.length, (index) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: AnimatedDot(isActive: index == _selectedIndex),
                  )),
            ),
            const Spacer(flex: 2),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  shadowColor: Colors.grey.shade400,
                  backgroundColor: const Color(0xFFEC9E49),
                ),
                onPressed: () async {
                  Get.toNamed("/login");
                },
                child: const Text("Get Started" , style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w300),)),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}





