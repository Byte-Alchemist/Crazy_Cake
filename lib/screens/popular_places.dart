import 'package:crazy_cake/models/house_model.dart';
import 'package:crazy_cake/utils/colors.dart';
import 'package:flutter/material.dart';

class PopularPlaces extends StatelessWidget {
  final HouseRoom houseRoom;
  const PopularPlaces({super.key, required this.houseRoom});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      padding: EdgeInsets.only(left: 10 , right: 20),
      margin: EdgeInsets.only(bottom: 0 ,top: 5),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                Positioned(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(houseRoom.image , fit: BoxFit.cover, height: 150 , width: 150,),
                  ),
                ),
                Positioned(
                  top: 78,
                  right: 0,
                  child: Card(
                    elevation: 0,
                    color: houseRoom.color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      child: Row(children: [
                        Icon(Icons.star , size: 10,),
                        Text(houseRoom.rating , style: TextStyle(color: kbackgroudColor , fontSize: 10),)
                      ],),
                    ),
                  ))
              ],
            ),
          ),
          SizedBox(width: 15,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(houseRoom.name , style: TextStyle(fontSize: 20),maxLines: 1,),
                  Text(houseRoom.place , style: TextStyle(color: fontColor , fontSize: 16),),
                  Row(  
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("${houseRoom.height}H || ${houseRoom.width}W" , style: TextStyle(color: Colors.black54 , fontSize: 15)
                      ),
                      Spacer(),
                      Text("\$ ${houseRoom.price}.00" , style: TextStyle(color: Colors.blue , fontWeight: FontWeight.bold , fontSize: 15),)
                    ],
                  )
                ],
                ),
            ),
          )
        ],
      ),
    );
  }
}