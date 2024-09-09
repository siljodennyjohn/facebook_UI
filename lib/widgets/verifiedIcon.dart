import 'package:flutter/material.dart';

class VerfiedIcon extends StatelessWidget {
  const VerfiedIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 3,
        ),
        Icon(
          Icons.verified,
          color: Colors.blue,
          size: 15,
        ),
      ],
    );
  }
}
