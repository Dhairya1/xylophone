import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildKey({required int sNumber, required Color colorValue}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: colorValue),
        onPressed: () {
          playSound(sNumber);
        }, child: const Text(''),
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
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildKey(sNumber: 1, colorValue: Colors.red),
              buildKey(sNumber: 2, colorValue: Colors.orange),
              buildKey(sNumber: 3, colorValue: Colors.yellow),
              buildKey(sNumber: 4, colorValue: Colors.green),
              buildKey(sNumber: 5, colorValue: Colors.teal),
              buildKey(sNumber: 6, colorValue: Colors.blue),
              buildKey(sNumber: 7, colorValue: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}