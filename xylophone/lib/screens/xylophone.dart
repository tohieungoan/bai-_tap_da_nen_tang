import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/note$noteNumber.wav'));
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: GestureDetector(
        onTap: () => playSound(soundNumber),
        child: Container(
          color: color,
          width: double.infinity, // Chiều rộng tối đa
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // Chuyển từ Row -> Column để hiển thị ngang
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.orange, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.blue, soundNumber: 5),
            buildKey(color: Colors.indigo, soundNumber: 6),
            buildKey(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
