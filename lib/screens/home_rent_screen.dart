import 'package:crazy_cake/models/house_model.dart';
import 'package:crazy_cake/screens/displayItemshorizontal.dart';
import 'package:crazy_cake/screens/popular_places.dart';
import 'package:crazy_cake/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeRentScreen extends StatefulWidget {
  const HomeRentScreen({super.key});

  @override
  State<HomeRentScreen> createState() => _HomeRentScreenState();
}

class _HomeRentScreenState extends State<HomeRentScreen> {
  String? dropdownCakes = "One-pound";
  String? dropdownFilter = "Short by: Price";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroudColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(170),
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "My Location",
                    style: TextStyle(color: fontColor, fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Dhaka , Bangladesh",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 25),
                      ),
                      Icon(Icons.arrow_drop_down),
                      Container(
                          height: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.notifications)))
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: DropdownButton<String>(
                          underline: const SizedBox.shrink(),
                          onChanged: (pounds) {
                            setState(() {
                              dropdownCakes = pounds;
                            });
                          },
                          items: [
                            "One-pound",
                            "Two-pounds",
                            "Three-pound",
                            "Four-Pound"
                          ]
                              .map((e) => DropdownMenuItem(
                                    value:
                                        e, // Set the value of the DropdownMenuItem
                                    child: Text(
                                      e,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: dropdownCakes,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: DropdownButton<String>(
                          underline: const SizedBox.shrink(),
                          onChanged: (price) {
                            setState(() {
                              dropdownFilter = price;
                            });
                          },
                          items: [
                            "Short by: Price",
                            "Short by: Pounds",
                          ]
                              .map((e) => DropdownMenuItem(
                                    value:
                                        e, // Set the value of the DropdownMenuItem
                                    child: Text(
                                      e,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: dropdownFilter,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 370,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: houseList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child:
                          Displayitemshorizontal(houseroom: houseList[index]),
                    );
                  }),
            ),
            SizedBox(height: 8,),
            PopularPlace(),
            ListView.builder(
                scrollDirection: Axis.vertical,
                reverse: true,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: houseList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: PopularPlaces(houseRoom: houseList[index]),
                  );
                }),

          ],
        ),
      ),
    );
  }
  Widget PopularPlace(){
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: ListTile(
        leading: Text("Popular Place" , style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.bold),),
        trailing: Text("View All" , style: TextStyle(
           decoration: TextDecoration.underline, // Underlines the text
           decorationColor: Colors.grey, // Sets the underline color to red
           decorationThickness: 1.5),),
      ),
    );
  }
}
