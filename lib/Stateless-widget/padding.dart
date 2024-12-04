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
          title: const Text('Padding :-'),
        ),
        body: Column(
          children: [
            Container(
              width: 200,
              height: 50,
              color: Colors.amber,
             // transform: Matrix4.skewX(60),
              child: const Padding(
              //  padding: EdgeInsets.all(50),
              //  padding: EdgeInsets.fromLTRB(100, 15, 10, 25),
              //  padding: EdgeInsets.only(top: 20,left: 50),
                padding: EdgeInsets.symmetric(horizontal: 70,vertical: 10),
                child: Text('Hello'),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
               // transform: Matrix4.skew(55,10),
                width: 200,
                height: 50,
                color: Colors.lightBlueAccent,
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
               // transform: Matrix4.skew(2, 22.74),
                width: 200,
                height: 50,
                color: Colors.green,
                child: Padding(
                    padding: const EdgeInsets.all(30),
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
               // transform: Matrix4.skew(30.2, 60),
                width: 200,
                height: 50,
                color: Colors.deepOrange,
              ),
            ),
            Container(
             // transform: Matrix4.skewY(-9.78),
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