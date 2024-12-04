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
          title: const Text('Expanded Class'),
        ),
        body: Column(
          children: [
            Container(
              width: 200,
              height: 50,
              color: Colors.amber,
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 200,
                height: 50,
                color: Colors.lightBlueAccent,
              ),
            ),
            Expanded(
              child: Container(
                width: 200,
                height: 50,
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Container(
                width: 200,
                height: 50,
                color: Colors.deepOrange,
              ),
            ),
            Container(
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