import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
    required this.bgColor,
    this.cardChild,
    this.onPress,
  }) : super(key: key);

  final Color bgColor;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
