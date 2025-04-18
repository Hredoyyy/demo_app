import 'package:flutter/material.dart';
import 'package:demo_app/styled_text.dart';

const start = Alignment.topRight;
const end = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});
  var active = "assets/dice-1.png";
  final Color color1, color2;
  rolldice() {
    active = "assets/dice-6.png";
    print("change imgage");
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: start,
          end: end,
        ),
      ),
      child: Center(
        child: Column(
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
        ),
      ),
    );
  }
}
