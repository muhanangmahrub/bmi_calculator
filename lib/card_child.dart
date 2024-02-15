import 'package:flutter/material.dart';

const labelStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class CardChild extends StatelessWidget {
  const CardChild({super.key, required this.textIcon, required this.iconChild});

  final String textIcon;
  final Widget iconChild;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconChild,
        const SizedBox(
          height: 15.0,
        ),
        Text(
          textIcon,
          style: labelStyle,
        ),
      ],
    );
  }
}