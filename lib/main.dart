import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

Random random = Random();
var min = 1;
var max = 6;
var _randomNumber1 = 1;

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(child: Image(image: AssetImage('images/ball$_randomNumber1.png')),
        onPressed: (){
          setState(() {
            _randomNumber1 = min + random.nextInt(max - min);
          });
        },
      ),
    );
  }
}