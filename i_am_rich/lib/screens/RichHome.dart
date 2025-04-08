import 'package:flutter/material.dart';

class RichHome extends StatelessWidget {
  const RichHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          
          title: const Text(
            "I am rich",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.blue,
            ),
          ), // Đặt tiêu đề đúng cách
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.blueGrey,
        body: const Center(
          child: Image(image: AssetImage("assets/image/rich.png")),
        ),
      ),
    );
  }
}
