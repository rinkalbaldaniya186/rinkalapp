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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            children: [
              Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 70,
              ),
              Container(
                 color: Colors.lightBlueAccent,
                 width: 90,
                 height: 50,
              ),
              Container(
                color: Colors.red,
                width: 80,
                height: 120,
              ),
              Container(
                color: Colors.deepPurple,
                width: 70,
                height: 50,
              ),

            ],
          ),
        ),
      ),
    );
  }
}