
import 'package:flutter/material.dart';

class MyListViewArray extends StatelessWidget {
  const MyListViewArray({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: numberList.map((number){
          return Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '$number',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        }).toList()
      ),
    );
  }
}