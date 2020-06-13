import 'package:flutter/material.dart';
import 'package:task1/Soufyan.dart';
import 'Inscription.dart';


void main() => runApp(
    Myapp(),
);
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Soufyan(),
    );
  }
}