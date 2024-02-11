import 'package:flutter/material.dart';
import 'package:dice_roll/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.topCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    const startAlignment = Alignment.topLeft;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlue],
              begin: startAlignment,
              end: endAlignment)),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
