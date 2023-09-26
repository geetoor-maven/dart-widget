
import 'package:flutter/material.dart';
import 'package:widget_learn/input2_example.dart';

class MyInput extends StatelessWidget {
  const MyInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          //MyInputOnChanged(),
          //MyInputWithController(),
          //MySwitch(),
          MyRadioInput()
      ],
    );
  }
}

class MyInputOnChanged extends StatefulWidget {
  const MyInputOnChanged({super.key});

  @override
  State<MyInputOnChanged> createState() => _MyInputOnChangedState();
}

class _MyInputOnChangedState extends State<MyInputOnChanged> {
  String _name = '';
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'Write Your Name Here..',
              labelText: 'Your Name'
            ),
            onChanged: (value) {
              setState(() {
                _name = value;
              });
            },
          ),
          const SizedBox(height: 6.0),
          ElevatedButton(
            child: const Text('Submit'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text('Hello $_name'),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}

class MyInputWithController extends StatefulWidget {
  const MyInputWithController({super.key});

  @override
  State<MyInputWithController> createState() => _MyInputWithControllerState();
}

class _MyInputWithControllerState extends State<MyInputWithController> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _textEditingController,
            decoration: const InputDecoration(
              hintText: 'Write Your Name Here..',
              labelText: 'Your Name'
            ),

          ),
          const SizedBox(height: 6.0),
          ElevatedButton(
            child: const Text('Submit'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text('Hello ${_textEditingController.text}'),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }
}


class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool lightOn = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: lightOn,
      onChanged: (value) {
        setState(() {
          lightOn = value;
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(lightOn ? 'Yess..' : 'No..'),
            duration: Duration(seconds: 1),
          )
        );
      },
    );

  }
}
