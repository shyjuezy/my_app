import 'package:flutter/material.dart';
import 'dart:math';

final Map<int, String> diceImages = {
  1: 'images/dice-1.png',
  2: 'images/dice-2.png',
  3: 'images/dice-3.png',
  4: 'images/dice-4.png',
  5: 'images/dice-5.png',
  6: 'images/dice-6.png',
};

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final Random _random = Random();
  final int maxDiceValue = 6;

  int currentDiceRoll = 4;
  String activeDiceImage = diceImages[4] ?? 'images/dice-4.png';

  void rollDice() {
    setState(() {
      currentDiceRoll = _random.nextInt(maxDiceValue) + 1;
      activeDiceImage = diceImages[currentDiceRoll] ?? 'images/dice-4.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
