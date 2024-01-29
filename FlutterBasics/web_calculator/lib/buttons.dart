import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String buttonText;
  final void Function(String) onPressed;

  CalculatorButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(buttonText),
       style: ElevatedButton.styleFrom(
        
        
        padding: EdgeInsets.all(16.0), 
        textStyle: TextStyle(fontSize: 35.0), // Adjust the text style
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),),
         child: Text(buttonText),
    );
  }
}
