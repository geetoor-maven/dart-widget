
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String message;
  const SecondScreen(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$message'),
          Center(
            child: OutlinedButton(
              child: Text('kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}