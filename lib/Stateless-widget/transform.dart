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
          title: const Text('Material App Bar'),
        ),
        body: Column(
          children: [
            Transform(
              // transform: Matrix4.translationValues(30, 5, 50),
              // transform: Matrix4.skewX(10),
              //  transform: Matrix4.skewY(10),
              //  transform: Matrix4.skew(50,50),
              // transform: Matrix4.skew(50.0, 0.0),
              // transform: Matrix4.skew(0.2, 0.0),
               transform: Matrix4.skew(0.3, 0.2),
              // transform: Matrix4.rotationX(70),
              // transform: Matrix4.rotationY(30),
              // transform: Matrix4.rotationZ(50),
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                //width: 200,
                //height: 150,
                color: Colors.amber,
                child: const Text('Hello'),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                transform: Matrix4.skew(55,10),
                width: 200,
                height: 50,
                color: Colors.lightBlueAccent,
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                transform: Matrix4.skew(2, 22.74),
                width: 200,
                height: 50,
                color: Colors.green,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                transform: Matrix4.skew(30.2, 60),
                width: 200,
                height: 50,
                color: Colors.deepOrange,
              ),
            ),
            Container(
              transform: Matrix4.skewY(-9.78),
              width: 200,
              height: 50,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
