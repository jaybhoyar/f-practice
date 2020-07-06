import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int number, {Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(number);
        },
        color: color,
        child: null,
      ),
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
              buildKey(1, color: Colors.red),
              buildKey(2, color: Colors.orange),
              buildKey(3, color: Colors.yellow),
              buildKey(4, color: Colors.green),
              buildKey(5, color: Colors.teal),
              buildKey(6, color: Colors.blue),
              buildKey(7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
