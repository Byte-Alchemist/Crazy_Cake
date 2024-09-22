import 'package:flutter/material.dart';

Widget kTextField(String hintText, String labelText) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xff40573A), width: 0.2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            blurRadius: 5, // Shadow blur effect
            offset: const Offset(0, 4), // Shadow position
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            labelText: labelText,
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff40573A)),
                borderRadius:
                    BorderRadius.all(Radius.circular(10.0)))),
      ),
    ),
  );
}