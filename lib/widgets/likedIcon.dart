import 'package:flutter/material.dart';

class LikedIcon extends StatelessWidget {
  const LikedIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
            Icons.thumb_up,
            color: Colors.blue,
            size: 16,
          );
       
  }
}