import 'package:flutter/material.dart';
import 'package:bmi_caculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.onTap,
    required this.label,
  }) : super(key: key);

  final VoidCallback onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            label,
            style: kLargeButtonStyleText,
          ),
        ),
      ),
    );
  }
}
