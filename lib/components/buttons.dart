import 'package:flutter/material.dart';

Widget submitBtn({String? text, VoidCallback? onPress}) {
  return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 247, 161, 3),
        padding: const EdgeInsets.all(15.0),
      ),
      onPressed: onPress ?? () {},
      child: Text(
        text ?? '',
        style: const TextStyle(
          fontSize: 18.0,
        ),
      ));
}

Widget wellcomeBtn({String? text, VoidCallback? onPress}) {
  return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 15.0),
      ),
      onPressed: onPress ?? () {},
      child: Text(
        text ?? '',
        style: const TextStyle(
          fontSize: 18.0,
        ),
      ));
}