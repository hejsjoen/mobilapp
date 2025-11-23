import 'package:flutter/material.dart';

class Lab1 extends StatefulWidget {
  const Lab1({super.key});

  @override
  State<Lab1> createState() => _Lab1State();
}

class _Lab1State extends State<Lab1> {
  @override
  Widget build(BuildContext contect) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Currency Converter",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
