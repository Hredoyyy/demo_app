import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var active = "assets/dice-1.png";
  rolldice() {
    setState(() {
      active = "assets/dice-6.png";
    });

    print("change imgage");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(active, width: 200),
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
