import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Magic Ball'),
          backgroundColor: Colors.purple.shade900,
        ),
        backgroundColor: Colors.purple.shade700,
        body: MagicBall(),
      ),
    ));

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int randomNum = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Center(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  randomNum = Random().nextInt(5);
                });
              },
              child: Image.asset('images/crystal$randomNum.png'),
            ),
          ),
        ),
      ],
    );
  }
}
