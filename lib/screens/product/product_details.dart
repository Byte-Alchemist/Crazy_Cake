import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final List<String> _imageUrls = [
    "https://t4.ftcdn.net/jpg/04/29/86/17/360_F_429861717_yssTQhuX2jgSL9ds1v8o1brmJsXh5cWt.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXIC0kLL93F-aoS8jqIYiOQS3I3CJMYVmcOw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3Mfj_tU_E-8c0KhXtsotOZiO_4i1-CFBWIg&s",
  ];

  int _currentImageIndex = 0; // Track the current image index in PageView
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * 0.4, // 40% of screen height
              width: double.infinity,
              color: Colors.grey[300],
              child: Stack(
                children: [
                  PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentImageIndex = index;
                      });
                    },
                    children: _imageUrls
                        .map((url) => Image.network(
                              url,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ))
                        .toList(),
                  ),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: _buildCircleIconButton(Icons.arrow_back, () {
                      Navigator.pop(context);
                    }),
                  ),
                  Positioned(
                    top: 30,
                    right: 80,
                    child: _buildCircleIconButton(Icons.favorite, () {
                      // Handle favorite action
                    }),
                  ),
                  Positioned(
                    top: 30,
                    right: 20,
                    child: _buildCircleIconButton(Icons.share, () {
                      // Handle share action
                    }),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 80,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 70,
                        width: screenWidth * 0.6, // Adjust width
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            _imageUrls.length,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  _currentImageIndex = index;
                                });
                                _pageController.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  _imageUrls[index],
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Cake",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Spacer(),
                      Icon(Icons.star, color: Colors.yellow),
                      Text(
                        "4.5",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Text(
                        "Chocolate Cake",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.add_box, color: Colors.green),
                    ],
                  ),
                  const Text(
                    "Seller",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          "https://cdn-icons-png.freepik.com/256/1077/1077114.png?semt=ais_hybrid",
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Joph doe",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Text(
                            "Shop Owner",
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ],
                      ),
                      const Spacer(),
                      _buildCircleIconButton(Icons.message, () {
                        // Handle message action
                      }),
                      const SizedBox(width: 10),
                      _buildCircleIconButton(Icons.call_made, () {
                        // Handle call action
                      }),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus feugiat, molestie ipsum et, consequat nibh. Nulla nec purus feugiat,",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  const Text(
                    "Select weight",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildContainer("1/2 kg"),
                        _buildContainer("1 kg"),
                        _buildContainer("2 kg"),
                        _buildContainer("3 kg"),
                        _buildContainer("4 kg"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 200,)
          ],
        ),
      ),
      bottomSheet: Container(
        height: 80,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              children: [
                Text(
                  "Price",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  "\$ 20",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                  Text(
                    "Buy Now",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCircleIconButton(IconData icon, VoidCallback onPressed) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon, size: 20, color: Colors.black),
        onPressed: onPressed,
      ),
    );
  }

  Widget _buildContainer(String text) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.2,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 0.5),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
