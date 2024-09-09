
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading:prithviraj ,
     title: TextField(
      decoration: InputDecoration(
      hintText: "What's on your mind?",
      hintStyle: TextStyle(
        color: Colors.grey,
      ),
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      errorBorder: InputBorder.none, 
      ),
     ),
     
    );
  }
}