

import 'package:flutter/material.dart';
import 'package:widget_learn/navigation/second_scree.dart';

class FirstScreen extends StatelessWidget {
  final String message = 'Hello from First Screen!';
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Center(
        child: OutlinedButton(
          child: Text('Home'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondScreen(message);
            },));
          },
        ),
      ),
    );
  }
}