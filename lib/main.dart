import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          background: kBackgroundColour,
        ),
      ),
      home: const InputPage(),
    );
  }
}