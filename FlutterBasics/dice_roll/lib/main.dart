import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(31, 245, 3, 3),
              Color.fromARGB(66, 100, 53, 8)
            ],
          )),
          child: Center(
            child: Text("Hello World!"),
          ),
        ),
      ),
    ),
  );
}
