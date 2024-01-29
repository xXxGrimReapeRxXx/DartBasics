import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:web_calculator/buttons.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String displayText = '';
  double result = 0.0;

  void onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        displayText = '';
        result = 0.0;
      } else if (buttonText == '=') {
        try {
          result = _evalExpression(displayText);
          displayText = result.toString();
        } catch (e) {
          displayText = 'Error';
        }
      } else {
        displayText += buttonText;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              displayText,
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(buttonText: '7', onPressed: onButtonPressed),
              CalculatorButton(buttonText: '8', onPressed: onButtonPressed),
              CalculatorButton(buttonText: '9', onPressed: onButtonPressed),
              CalculatorButton(buttonText: '/', onPressed: onButtonPressed),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(buttonText: '4', onPressed: onButtonPressed),
              CalculatorButton(buttonText: '5', onPressed: onButtonPressed),
              CalculatorButton(buttonText: '6', onPressed: onButtonPressed),
              CalculatorButton(buttonText: '*', onPressed: onButtonPressed),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(buttonText: '1', onPressed: onButtonPressed),
              CalculatorButton(buttonText: '2', onPressed: onButtonPressed),
              CalculatorButton(buttonText: '3', onPressed: onButtonPressed),
              CalculatorButton(buttonText: '-', onPressed: onButtonPressed),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(buttonText: '0', onPressed: onButtonPressed),
              CalculatorButton(buttonText: 'C', onPressed: onButtonPressed),
              CalculatorButton(buttonText: '=', onPressed: onButtonPressed),
              CalculatorButton(buttonText: '+', onPressed: onButtonPressed),
            ],
          ),
          SizedBox(height: 20), // Add some space
          ElevatedButton(
            onPressed: () {
              // Add the function to show the positive image
              showPositiveImage(context);
            },
            child: Text('Click me to fix your day'),
          ),
          SizedBox(height: 20), // Add some space
          Text('Click that button above at your own risk! '),
        ],
      ),
    );
  }

  double _evalExpression(String expression) {
    try {
      final parser = Parser();
      final parsed = parser.parse(expression);
      final result = parsed.evaluate(EvaluationType.REAL, ContextModel());

      if (result is double) {
        return result;
      } else {
        return 0.0;
      }
    } catch (e) {
      return 0.0;
    }
  }

  void showPositiveImage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
              'Whatever it is that bothers you, drink some milk! Or coffe!'),
          content: Image.asset(
            'assets/images/cof.jpg', // Replace with the actual path of your image
            height: 300, // Adjust the height as needed
            width: 300, // Adjust the width as needed
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
