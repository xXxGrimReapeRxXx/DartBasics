import 'package:flutter/material.dart';

class StyledText extends StatelessWidget  {
 const  StyledText({super.key});
  @override
  Widget build(context){
    return const Text(
              "HI",
              style: TextStyle(color: Colors.orange, fontSize: 22),
              textWidthBasis: TextWidthBasis.longestLine,
            );
  }
}