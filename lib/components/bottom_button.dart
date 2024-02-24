import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.onPressed, required this.titleButton});

  final VoidCallback onPressed;
  final String titleButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: kLightColour,
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.only(bottom: 20.0),
      width: double.infinity,
      height: kBottomContainerHeight,
      child: FloatingActionButton(
        backgroundColor: kLightColour,
        onPressed: onPressed,
        child: Text(
          titleButton,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}