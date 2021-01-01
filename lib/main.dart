import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceNumber = 1;
  int rightdiceNumber = 1;
  void diceface() {
    setState(() {
      leftdiceNumber = Random().nextInt(6) + 1;
      print('left Dice No. = $leftdiceNumber');
      rightdiceNumber = Random().nextInt(6) + 1;
      print('Right Dice No. = $rightdiceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  diceface();
                });
              },
              child: Image.asset('images/dice$leftdiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  diceface();
                });
              },
              child: Image.asset('images/dice$rightdiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
