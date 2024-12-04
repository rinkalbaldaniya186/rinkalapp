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
        body: Container(
          color: Colors.grey,
          child: Column(
            children: [
              Container(
                width: 200,
                height: 100,
                color: Colors.amber,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                child: Container(
                  color: Colors.cyan,
                  height: 50,
                  width: 50,
                ),
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
                  margin: const EdgeInsets.only(top: 10,bottom: 10),
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
      ),
    );
  }
}