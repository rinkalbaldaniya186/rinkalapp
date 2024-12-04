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
          title: const Text('Aspect Ratio',style: TextStyle(color: Colors.black,fontSize: 30),),
          backgroundColor: Colors.lightBlueAccent.shade100,
        ),
        body: Center(
          child:  Container(
            color: Colors.blue,
            alignment: Alignment.center,
           // width: 300,
            width: 100.0,
            height: 100.0,
            child: AspectRatio(
             // aspectRatio: 2.0,
             // aspectRatio: 0.5,
              aspectRatio: 16/9,
              child: Container(
                // height: 100, // 0.5
                // width: 200, // 2.0
                color: Colors.green,
              ),
            ),
          ),
        ),
      ),
    );
  }
}