import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Random Dice')),
          backgroundColor: Colors.red,
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
  int leftno = 1;
  int rightno = 1;

  void changeDice() {
    leftno = Random().nextInt(6) + 1;
    rightno = Random().nextInt(6) + 1;
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
                  changeDice();
                });
              },
              child: Image.asset('images/dice$leftno.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(
                    () {
                      changeDice();
                    },
                  );
                },
                child: Image.asset('images/dice$rightno.png')),
          ),
        ],
      ),
    );
  }
}
