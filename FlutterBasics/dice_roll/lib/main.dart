import 'package:flutter/material.dart';
import 'package:dice_roll/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(body: GradientContainer(Colors.black12, Colors.black)),
    ),
  );
}
