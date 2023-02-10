import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LanguagePage extends StatefulWidget {
  LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  int? _selectedOption;

  @override
  void initState() {
    // TODO: implement initState
    _selectedOption = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Chenge Language',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          shadowColor: const Color.fromARGB(0, 255, 255, 255),
        ),
        body: Container(
          child: ListView(children: [
            RadioListTile(
              value: 1,
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
              title: const Text('text'),
            ),
            RadioListTile(
              value: 2,
              groupValue: _selectedOption,
              onChanged: (val) {
                setState(() {
                  _selectedOption = val!;
                });
              },
              title: const Text('text'),
            ),
            RadioListTile(
              value: 3,
              groupValue: _selectedOption,
              onChanged: (val) {
                setState(() {
                  _selectedOption = val!;
                });
              },
              title: const Text('text'),
            ),
          ]),
        ),
        bottomNavigationBar: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 247, 161, 3),
              padding: const EdgeInsets.all(15.0),
            ),
            onPressed: () {},
            child: const Text(
              'Submit',
              style: TextStyle(
                fontSize: 18.0,
              ),
            )),
      ),
    );
  }
}
