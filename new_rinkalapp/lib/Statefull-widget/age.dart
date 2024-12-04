import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: CalculatorExample(),
    );
  }
}

class CalculatorExample extends StatefulWidget {
  const CalculatorExample({super.key});

  @override
  State<CalculatorExample> createState() => _CalculatorExampleState();
}

class _CalculatorExampleState extends State<CalculatorExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.white38,
      ),
      body: Container(
        child: Container(),
      )
    );
  }
}
