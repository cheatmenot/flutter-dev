import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything 2'),
          backgroundColor: Colors.blue[900],
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballValue = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  ballValue = Random().nextInt(5) + 1;
                });
              },
              child: Image(
                image: AssetImage("images/ball$ballValue.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
