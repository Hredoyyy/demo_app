import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var dicenum = 2;

  rolldice() {
    setState(() {
      dicenum = randomizer.nextInt(6) + 1;
    });

    print("change imgage to $dicenum");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/dice-$dicenum.png", width: 200),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(top: 25),
            foregroundColor: Colors.deepPurple,
            textStyle: const TextStyle(fontSize: 25.00),
          ),
          child: Text("Roll Dice"),
        ),
      ],
    );
  }
}
