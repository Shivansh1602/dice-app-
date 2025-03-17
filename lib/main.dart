import 'package:flutter/material.dart';
import 'package:restarting_flutter/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(
              Color.fromARGB(255, 222, 18, 113), // First Color
              Color.fromARGB(243, 175, 15, 207) // Second Color
              )),
    ),
  );
}
