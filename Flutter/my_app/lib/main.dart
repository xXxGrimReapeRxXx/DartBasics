import 'package:flutter/material.dart';

void main() {
  runApp(SimpleCalculator());
}

class SimpleCalculator extends StatelessWidget {
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
  String _output = '0';

  void _handleButtonClick(String value) {
    if (value == 'C') {
      _clear();
    } else if (value == '=') {
      _calculate();
    } else {
      _appendDigit(value);
    }
  }

  void _clear() {
    setState(() {
      _output = '0';
    });
  }

  void _appendDigit(String digit) {
    setState(() {
      if (_output == '0') {
        _output = digit;
      } else {
        _output += digit;
      }
    });
  }

  void _calculate() {
    // Basic calculation logic
    try {
      Parser p = Parser();
      double result = p.parse(_output);
      setState(() {
        _output = result.toString();
      });
    } catch (e) {
      setState(() {
        _output = 'Error';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.bottomRight,
              child: Text(
                _output,
                style: TextStyle(fontSize: 36.0),
              ),
            ),
          ),
          Divider(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildButton('7'),
                  _buildButton('8'),
                  _buildButton('9'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildButton('4'),
                  _buildButton('5'),
                  _buildButton('6'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildButton('1'),
                  _buildButton('2'),
                  _buildButton('3'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildButton('0'),
                  _buildButton('C'),
                  _buildButton('='),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String value) {
    return ElevatedButton(
      onPressed: () {
        _handleButtonClick(value);
      },
      child: Text(
        value,
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class Parser {
  double parse(String expression) {
    // Basic parser for addition and subtraction
    List<String> terms = expression.split('+');
    double result = 0;
    for (String term in terms) {
      result += double.parse(term);
    }
    return result;
  }
}
