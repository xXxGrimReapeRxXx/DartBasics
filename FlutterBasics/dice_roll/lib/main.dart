import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(body: GradientContainer()),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlue],
              begin: Alignment.bottomRight,
              end: Alignment.bottomRight)),
      child: Center(
        child: Text(
          "Hello World!",
          style: TextStyle(color: Colors.amber[600], fontSize: 25),
        ),
      ),
    );
  }
}
