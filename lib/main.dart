import 'dart:math';
import 'package:flutter/material.dart';
import 'package:micard/single_dicee.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
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
  int leftDiceName = 2;
  int rightDiceName = 4;

  void changeDiceFace() {
    return setState(() {
      leftDiceName = Random().nextInt(6) + 1;
      rightDiceName = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: FlatButton(
                      onPressed: () {
                        changeDiceFace();
                      },
                      child: Image.asset('images/dice$leftDiceName.png')),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: FlatButton(
                      onPressed: () {
                        changeDiceFace();
                      },
                      child: Image.asset('images/dice$rightDiceName.png')),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            child: Text(
              'To single dicee',
              style: TextStyle(fontSize: 20),
            ),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SingleDicee();
              }));
            },
          )
        ],
      ),
    );
  }
}
