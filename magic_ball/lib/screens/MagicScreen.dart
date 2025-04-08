import 'dart:math';
import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int BallNumber = 1;

  void rollBall() {
    setState(() {
      BallNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: const Text("Ask Me Any Thing"),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Canh giữa
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Canh giữa
                children: [
                  GestureDetector(
                    onTap: rollBall,
                    child: Image.asset(
                      "assets/images/ball$BallNumber.png",
                      width: 300,
                      height: 300,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
