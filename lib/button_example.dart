
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            child:  Center(
              child: OutlinedButton(
                child: const Text('OutLinedButton'),
                onPressed: () {
                  
                },
              ),
            ),
          ),
        Container(
          child: IconButton(
            icon: const Icon(Icons.snapchat),
            tooltip: 'testing',
            onPressed: () {
              
            },
          ),
        ),
        MyDropDownBtn(),
      ],
    );
  }
}

class MyDropDownBtn extends StatefulWidget {
  const MyDropDownBtn({super.key});

  @override
  State<MyDropDownBtn> createState() => _MyDropDownBtnState();
}

class _MyDropDownBtnState extends State<MyDropDownBtn> {
  String? lenguange;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: DropdownButton<String>(
        items: const <DropdownMenuItem<String>>[
          DropdownMenuItem<String>(
            value: 'Dart',
            child: Text('Dart'),
          ),
          DropdownMenuItem<String>(
            value: 'Kotlin',
            child: Text('Kotlin'),
          ),
          DropdownMenuItem<String>(
            value: 'Swift',
            child: Text('Swift'),
          ),
        ],
        value: lenguange,
        hint: const Text('Pilih Bahasa'),
        onChanged: (value) {
          setState(() {
            lenguange = value;
          });
        },
      ),
    );
  }
}