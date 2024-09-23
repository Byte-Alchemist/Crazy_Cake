import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160),
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xff5C1919),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: const Text(
                      "Location",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ),
                  subtitle: const Row(
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
                  trailing: Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(top: 20),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ), Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          padding: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: "Search",
                                border: InputBorder.none,
                                icon: Icon(Icons.search)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
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
    );
  }
}
