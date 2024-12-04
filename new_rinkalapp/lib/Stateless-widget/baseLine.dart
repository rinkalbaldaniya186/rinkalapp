import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Base Line',style: TextStyle(color: Colors.black,fontSize: 30),),
          backgroundColor: Colors.lightBlueAccent.shade100,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.teal,
            child: Baseline(
              // baseline: 0,
               baseline: 30,
              // baseline: -25,
              // baseline: -50,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          )
        ),
      ),
    );
  }
}