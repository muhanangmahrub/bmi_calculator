import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'card_child.dart';

const bottomContainerHeight = 80.0;
const colorReusableCard = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          const Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  cardChild: CardChild(
                    textIcon: 'MALE',
                    iconChild: FaIcon(
                      FontAwesomeIcons.mars,
                      size: 80.0,
                    ),
                  ),
                  colour: colorReusableCard,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardChild: CardChild(
                      textIcon: 'FEMALE',
                      iconChild: FaIcon(
                        FontAwesomeIcons.venus,
                        size: 80.0,
                      )),
                  colour: colorReusableCard,
                ),
              ),
            ],
          )),
          const Expanded(
            child: ReusableCard(
              colour: colorReusableCard,
            ),
          ),
          const Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: colorReusableCard,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: colorReusableCard,
                ),
              ),
            ],
          )),
          Container(
            color: bottomContainerColour,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}