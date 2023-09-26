

import 'package:flutter/material.dart';
import 'package:widget_learn/mediaquery/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:  ThemeData(
        fontFamily: 'Oswald',
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        
        body: const HomePage(),
      )
    );
  }
}


// contoh membuat Widget
class Heading extends StatelessWidget {
  final String text;
  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.blue
      ),
    );
  }
}

// contoh statefull widget
class BiggerText extends StatefulWidget {
  final String text;
  const BiggerText({Key? key, required this.text}):super(key: key);

  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {

  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.text,
          style: TextStyle(
            fontSize: _textSize
          ),
        ),
        ElevatedButton(
          child: const Text('Upp'),
          onPressed: (){
            setState(() {
              _textSize++;
            });
          },
        ),
        ElevatedButton(
          child: const Text('Down'),
          onPressed: (){
            setState(() {
              _textSize--;
            });
          },
        )
      ],
    );
  }
}