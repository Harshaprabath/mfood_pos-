import 'package:flutter/material.dart';
import 'package:mfood_pos/screens/language_page.dart';
import 'package:intl/intl.dart';

import '../components/buttons.dart';
import 'home_page.dart';

// ignore: must_be_immutable
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assests/r.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat("hh:mm ").format(DateTime.now()),
                  style: const TextStyle(
                      fontSize: 45.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                Column(
                  
                  children: [
                    Container(
                      height: 8.0,
                    ),
                    Text(
                      DateFormat("a").format(DateTime.now()),
                      style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 10.0,
            ),
            Container(
              child: wellcomeBtn(
                  text: "Touch to Expand",
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }),
            ),
          ],
        ),
      )

         
          ),
    );
  }
}
