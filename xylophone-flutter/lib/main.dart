import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) async {
    print("play note $noteNumber!");
    final player = AudioPlayer();
    await player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildXylophoneKey({Color color, int noteNumber}) {
    return Expanded(
      child: TextButton(
          onPressed: () {
            playSound(noteNumber);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            )),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildXylophoneKey(color: Colors.red, noteNumber: 1),
              buildXylophoneKey(color: Colors.orange, noteNumber: 2),
              buildXylophoneKey(color: Colors.yellow, noteNumber: 3),
              buildXylophoneKey(color: Colors.green, noteNumber: 4),
              buildXylophoneKey(
                  color: Color.fromRGBO(0, 140, 140, 1.0), noteNumber: 5),
              buildXylophoneKey(color: Colors.blue, noteNumber: 6),
              buildXylophoneKey(color: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
