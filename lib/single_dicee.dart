import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleDicee extends StatefulWidget {
  const SingleDicee({Key key}) : super(key: key);

  @override
  State<SingleDicee> createState() => _SingleDiceeState();
}

class _SingleDiceeState extends State<SingleDicee> {
  int diceName = 2;

  void changeDiceFace() {
    return setState(() {
      diceName = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Single dicee'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: FlatButton(
            onPressed: () {
              changeDiceFace();
            },
            child: Container(
                width: 300,
                height: 300,
                child: Image.asset('images/dice$diceName.png')),
          ),
        ),
      ),
    );
  }
}
