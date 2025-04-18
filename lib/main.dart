import 'package:flutter/material.dart';
import 'package:demo_app/grad_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 224, 101, 142),
          Color.fromARGB(255, 127, 253, 253),
        ),
      ),
    ),
  );
}
