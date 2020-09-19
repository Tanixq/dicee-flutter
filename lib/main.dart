import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _dicePageState createState() => _dicePageState();
}

// ignore: camel_case_types
class _dicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void changeDiceFace() {
    leftDiceNum = Random().nextInt(6) + 1;
    rightDiceNum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeDiceFace();
                      print('pressed left');
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNum.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeDiceFace();
                      print('pressed right');
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNum.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
