import 'package:flutter/material.dart';

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
          Center(
            child: Text(
              "Hello World",
              style: TextStyle(color: Colors.black,fontSize: 26.0),
            ),
          ),
          Text(
            "أنت",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "أنت",
            style: TextStyle(color: Colors.black),
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        child: const Text(
          "submit",
          style: TextStyle(color: Colors.black),
        ),
      ),
    ));
  }
}
