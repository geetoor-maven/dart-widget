
import 'package:flutter/material.dart';

class MyImageNetwork extends StatelessWidget {
  const MyImageNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Geetoor Maven',
            style: TextStyle(
              fontSize: 25
            ),
          ),
          Image.asset(
            'images/foto.jpeg',
            width: 200,
            height: 300,
          )
        ],
      ),
    );
  }
}