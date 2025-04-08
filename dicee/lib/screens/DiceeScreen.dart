import 'dart:math';
import 'package:flutter/material.dart';

class DiceeScreen extends StatefulWidget {
  const DiceeScreen({super.key});

  @override
  _DiceeScreenState createState() => _DiceeScreenState();
}

class _DiceeScreenState extends State<DiceeScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1; // Random số từ 1-6
      rightDiceNumber = Random().nextInt(6) + 1; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: const Text("Dicee"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Canh giữa
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Canh giữa
                children: [
                  GestureDetector(
                    onTap: rollDice,
                    child: Image.asset(
                      "assets/images/dice$leftDiceNumber.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  const SizedBox(width: 50),
                  GestureDetector(
                    onTap: rollDice,
                    child: Image.asset(
                      "assets/images/dice$rightDiceNumber.png",
                      width: 100,
                      height: 100,
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
