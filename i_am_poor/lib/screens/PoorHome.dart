import 'package:flutter/material.dart';

class RichHome extends StatelessWidget {
  const RichHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "I am Poor:((",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ), // Đặt tiêu đề đúng cách
          backgroundColor: Colors.brown,
        ),
        backgroundColor: Colors.brown[200],
        body: const Center(
          child: Image(image: AssetImage("assets/image/poor.png")),
        ),
      ),
    );
  }
}
