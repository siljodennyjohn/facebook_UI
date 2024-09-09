import 'package:flutter/material.dart';

Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      label: Text(
        buttonText,
        style: TextStyle(color: Colors.black),
      ),
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
    );
  }