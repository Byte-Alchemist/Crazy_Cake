import 'package:crazy_cake/models/house_model.dart';
import 'package:crazy_cake/utils/colors.dart';
import 'package:flutter/material.dart';

class Displayitemshorizontal extends StatelessWidget {
  final HouseRoom houseroom;
   Displayitemshorizontal({super.key, required this.houseroom});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left :18 , bottom: 5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: Colors.white,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(houseroom.image , fit: BoxFit.cover, height: 220, width: 250,),
          ),
         Container(
          height: 140,
          width: 250,
          padding: EdgeInsets.only(left: 15 , top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(houseroom.name , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , height: 1.2),maxLines: 2,),
              SizedBox(height: 15,),
              Text(houseroom.place , style: TextStyle(color: fontColor , fontSize: 10),),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("\$ ${houseroom.price}.00" , style: TextStyle(fontSize: 20 , color: Colors.blue.shade400),),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                    child: Icon(Icons.bookmark , size: 20, color: Colors.white,))
                ],),
              )
              
            ],
          ),
         )

        ],
      ),
    );
  }
}
