import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';



var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomLeft;
class GradientContainer extends StatelessWidget  {
 const  GradientContainer({super.key});
  @override
  Widget build(context){
    return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(colors: [
               Color.fromARGB(255, 61, 3, 160),
              Color.fromARGB(255, 97, 25, 221),
            ], begin: startAlignment, end: endAlignment),
          ),
          child: const Center(
            child:  StyledText()
          ),
        );
  }
}