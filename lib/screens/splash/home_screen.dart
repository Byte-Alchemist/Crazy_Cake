import 'dart:async'; // Import for Timer
import 'package:crazy_cake/models/house_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // PageController to control the PageView
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0; // To track the current page
  late Timer _timer; // Timer to handle auto-sliding
  List<HouseRoom> houselist = houseList;
  // List of offer images or widgets
  final List<String> offerImages = [
    'assets/image/delivery.png',
    'assets/image/order.png',
    'assets/image/otp.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
    // Start auto-sliding when widget is initialized
  }

  @override
  void dispose() {
    _pageController.dispose(); // Dispose PageController
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  // Start the auto-slide functionality
  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < offerImages.length - 1) {
        _currentPage++; // Move to the next page
      } else {
        _currentPage = 0; // Loop back to the first page
      }
      // Animate the page change
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    });
  }

  // This function will be triggered every time the page changes
  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  // Widget for the custom dot indicator
  Widget _buildDotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(offerImages.length, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 8,
          width: _currentPage == index ? 16 : 8, // Active dot is wider
          decoration: BoxDecoration(
            color: _currentPage == index
                ? Colors.brown
                : Colors.grey, // Active dot color
            borderRadius: BorderRadius.circular(8),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("The house length is ${houselist.length}");
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 160,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          "Location",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.yellow,
                          ),
                          Text(
                            "Kathmandu",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.yellow,
                            size: 10,
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                    hintText: "Search",
                                    border: InputBorder.none,
                                    icon: Icon(Icons.search)),
                              ),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            height: 50,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.tune,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              pinned: true, // Keeps the app bar visible
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Special Offer",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xff5C1919),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox with PageView.builder
                    SizedBox(
                      height: 200, // Adjust height according to your design
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: offerImages
                            .length, // Ensure the itemCount matches the list length
                        onPageChanged:
                            _onPageChanged, // Call _onPageChanged when swiped
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                offerImages[index],
                                fit: BoxFit
                                    .cover, // Ensure the image fits the container
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 16), // Space between PageView and dots
                    _buildDotIndicator(),
                    const SizedBox(height: 15),
                    // Custom dot indicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Popular Shops",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xff5C1919),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: houselist.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20)),
                          child: ListTile(
                            title: Text(houselist[index].name),
                            trailing: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(houselist[index].image)),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(houselist[index].place),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(houselist[index].rating),
                                    const SizedBox(width: 10),
                                    const Icon(
                                      Icons.bathtub,
                                      color: Colors.yellow,
                                    ),
                                    Text(houselist[index].bath),
                                    const SizedBox(width: 10),
                                    const Icon(
                                      Icons.square_foot,
                                      color: Colors.yellow,
                                    ),
                                    Text(houselist[index].height),
                                    const SizedBox(width: 10),
                                    const Icon(
                                      Icons.square_foot,
                                      color: Colors.yellow,
                                    ),
                                    Expanded(child: Text(houselist[index].width)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: houselist[index].color,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text(
                                        houselist[index].type,
                                        style:
                                            const TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      "\$${houselist[index].price}",
                                      style: const TextStyle(
                                          color: Color(0xff5C1919),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
