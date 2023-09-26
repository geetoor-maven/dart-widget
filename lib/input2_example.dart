
import 'package:flutter/material.dart';

class MyRadioInput extends StatefulWidget {
  const MyRadioInput({super.key});

  @override
  State<MyRadioInput> createState() => _MyRadioInputState();
}

class _MyRadioInputState extends State<MyRadioInput> {
  String? lenguange;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: Radio<String>(
            value: 'Dart',
            groupValue: lenguange,
            onChanged: (value) {
              setState(() {
                lenguange = value;
                showSnackBar();
              });
            },
          ),
          title: Text('Dart'),
        ),
        ListTile(
          leading: Radio<String>(
            value: 'Swift',
            groupValue: lenguange,
            onChanged: (value) {
              setState(() {
                lenguange = value;
                showSnackBar();
              });
            },
          ),
          title: Text('Swift'),
        )
      ],
    );
  }

  void showSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$lenguange Selected'),
        duration: Duration(seconds: 1),
      )
    );
  }
}