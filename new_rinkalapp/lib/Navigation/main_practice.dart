import 'package:flutter/material.dart';
import 'package:new_rinkalapp/navigation/screenOne_practice.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: screenOnePractice(),
    );
  }
}
