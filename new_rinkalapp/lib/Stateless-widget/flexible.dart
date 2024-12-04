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
          title: const Text('Flexible Class'),
        ),
        body: Column(
          children: [
            Container(
              width: 200,
              height: 50,
              color: Colors.amber,
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                width: 200,
                height: 50,
                color: Colors.lightBlueAccent,
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                width: 200,
                height: 50,
                color: Colors.green,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
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