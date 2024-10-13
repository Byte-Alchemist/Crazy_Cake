import 'package:flutter/cupertino.dart';

class HouseRoom {
  final String name;
  final String place;
  final String price;
  final String height;
  final String width;
  final String bath;
  final String type;
  final String rating;
  final String image;
  final Color color;
  HouseRoom({
    required this.bath,
    required this.height,
    required this.name,
    required this.place,
    required this.price,
    required this.type,
    required this.width,
    required this.rating,
    required this.image,
    required this.color
  });
}

List<HouseRoom> houseList = [
  HouseRoom(
    name: "Sweet Layers House",
    place: "Kathmandu, Nepal",
    price: "1250",
    bath: "2",
    height: "12.5",
    width: "18.5",
    type: "Family",
    rating: "4.5",
    image: "assets/image/image22.jpeg",
    color: const Color(0xff7aafff)
  ),
  HouseRoom(
    name: "Frost & Flour",
    place: "Surkhet, Nepal",
    price: "640",
    bath: "3",
    height: "22.5",
    width: "18.5",
    type: "Family",
    rating: "4.5",
    image: "assets/image/image9.jpeg",
      color: const Color(0xff63bed8)
  ),
  HouseRoom(
    name: "Dreamy Desserts",
    place: "Surkhet Nepal",
    price: "300",
    bath: "1",
    height: "12.0",
    width: "20.0",
    type: "Family",
    rating: "4.0",
    image: "assets/image/image3.jpeg",
     color: const Color(0xffad85e6)
  ),
  HouseRoom(
    name: "The Cake Palette",
    place: "Jakarta, Indonesia",
    price: "222",
    bath: "1",
    height: "10",
    width: "15",
    type: "Single",
    rating: "5.0",
    image: "assets/image/image4.jpeg",
     color: const Color(0xff44aeb2)
  ),
  HouseRoom(
    name: "Sugar & Crumb",
    place: "Jakarta, Indonesia",
    price: "160",
    bath: "2",
    height: "12",
    width: "18",
    type: "Family",
    rating: "4.6",
    image: "assets/image/image5.jpeg",
     color: const Color(0xffad85e6)
  ),
  HouseRoom(
    name: "Heavenly Bakes",
    place: "Mumbai, India",
    price: "230",
    bath: "2",
    height: "11.1",
    width: "22.2",
    type: "Single",
    rating: "4.0",
    image: "assets/image/image6.jpeg",
     color: const Color(0xff44aeb2)
  ),
  HouseRoom(
    name: "Frosted Fantasies",
    place: "Jakarta, Indonesia",
    price: "130",
    bath: "2",
    height: "10.5",
    width: "15.5",
    type: "Family",
    rating: "4.0",
    image: "assets/image/image7.jpeg",
     color: const Color(0xffad85e6)
  ),
  HouseRoom(
    name: "Crave Cakes",
    place: "Kuala Lumpur, Malaysia",
    price: "290",
    bath: "1",
    height: "10.5",
    width: "14.5",
    type: "Single",
    rating: "5.0",
    image: "assets/image/image8.jpeg",
        color: const Color(0xff7aafff)
  ),
  HouseRoom(
    name: "The Way House",
    place: "Pokhara, Nepal",
    price: "339",
    bath: "2",
    height: "12.5",
    width: "18.5",
    type: "Family",
    rating: "4.5",
    image: "assets/image/image2.jpeg",
         color: const Color(0xff63bed8)
  ),
  HouseRoom(
    name: "Whisk & Whip",
    place: "Kathmandu, Nepal",
    price: "330",
    bath: "2",
    height: "12.5",
    width: "18.5",
    type: "Family",
    rating: "4.5",
    image: "assets/image/image11.jpeg",
        color: const Color(0xff7aafff)

  ),
  HouseRoom(
    name: "Buttercream Bliss",
    place: "Jakarta, IIndial",
    price: "550",
    bath: "1",
    height: "13.5",
    width: "19.5",
    type: "Family",
    rating: "5.0",
    image: "assets/image/image1.jpeg",
    color: const Color(0xff44aeb2)
  ),
];