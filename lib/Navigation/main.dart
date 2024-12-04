import 'package:flutter/material.dart';
import 'package:rinkalapp/navigation/screenOne.dart';
import 'package:rinkalapp/navigation/screenThree.dart';
import 'package:rinkalapp/navigation/screenTwo.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => const ScreenOne(),
        '/second' : (context) => ScreenTwo.withoutData(),
        '/three' : (context) => const ScreenThree(),
      },
      title: 'Material App',
      //home: ScreenOne(),
    );
  }
}
