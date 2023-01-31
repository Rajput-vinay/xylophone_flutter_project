import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({var color, var soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.yellow, soundNumber: 2),
            buildKey(color: Colors.green, soundNumber: 3),
            buildKey(color: Colors.pink, soundNumber: 4),
            buildKey(color: Colors.orange, soundNumber: 5),
            buildKey(color: Colors.purple, soundNumber: 6),
            buildKey(color: Colors.teal, soundNumber: 7),
          ]),
        ),
      ),
    );
  }
}
