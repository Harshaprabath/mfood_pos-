import 'package:flutter/material.dart';
import 'package:mfood_pos/screens/language_page.dart';
import 'package:intl/intl.dart';

import '../components/buttons.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;

  //List<String> menus = ['Food 1', 'Food 2', 'Food 3', 'Food 4', 'Food 5', 'Food 6', 'Food 7','Food 8', 'Food 9', 'Food 10', 'Food 11', 'Food 12', 'Food 13', 'Food 14'];
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Welcome!',
            style: TextStyle(
              color: Color.fromARGB(255, 39, 39, 39),
              fontSize: 40.0,
              fontWeight: FontWeight.w200,
            )),
        automaticallyImplyLeading: false,
        toolbarHeight: 95.0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Row(
        children: [
          SizedBox(
            width: 150,
            child: ListView.separated(
              itemCount: 10, //menus.length,
                separatorBuilder:(BuildContext context,int  index) {
                  return const SizedBox(height:20);
                },
                itemBuilder: (BuildContext context,int index) {
                  return GestureDetector(
                    onTap: (() {
                      setState(() {
                      selectedIndex = index;
                      });
                    }),
                    child: Container(
                      child: Row(children: [
                        AnimatedContainer(
                          duration: const Duration(microseconds: 500),
                          height: (selectedIndex == index)?50:0,
                          width: 5,
                          color:Colors.blue,
                        ),
                         Expanded(child: Container(
                          color: (selectedIndex == index)? Colors.blueGrey.withOpacity(0.2):Colors.transparent,
                           child: Padding(
                             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                             child: Text('Tab $index'), //Text(menu[index])
                           ),
                         )) 
                      ]),
                    ),
                  );
                },),
                ),
                        
        ],
      ),
    ));
  }
}
