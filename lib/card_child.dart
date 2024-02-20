import 'package:flutter/material.dart';
import 'constants.dart';

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
          style: kLabelStyle,
        ),
      ],
    );
  }
}