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
          title: const Text('Align',style: TextStyle(color: Colors.black,fontSize: 30),),
          backgroundColor: Colors.lightBlueAccent.shade100,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amberAccent.shade200,
            child: const Align(
              alignment: Alignment.topCenter,
              // Alignment(0.2,0.6),
              child: Text('Hello !')
            ),
          ),
        ),
      ),
    );
  }
}