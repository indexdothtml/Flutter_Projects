import 'dart:math';
import 'package:flutter/material.dart';

var random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceNumber = 2;

  void rollDice() {
    setState(() {
      activeDiceNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$activeDiceNumber.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 20),
            // padding: const EdgeInsets.only(top: 20),
            // padding: const EdgeInsets.all(20)
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
