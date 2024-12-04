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
          title: const Text('Base Line Practice',style: TextStyle(color: Colors.black,fontSize: 30),),
          backgroundColor: Colors.lightBlueAccent.shade100,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 370,
            color: Colors.amberAccent,
            alignment: Alignment.topCenter,
            child: const Baseline(
              baseline: 10,
              baselineType: TextBaseline.alphabetic,
              child: Text('Angel Multimedia Institute',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: 'Kanit',fontStyle: FontStyle.normal)),
            ),
          ),
        ),
      ),
    );
  }
}