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
          title: const Text('Column',style: TextStyle(color: Colors.black,fontSize: 30),),
          backgroundColor: Colors.lightBlueAccent.shade100,
        ),
        body: Container(
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            verticalDirection: VerticalDirection.down,
            children: [
              Container(
                color: Colors.yellow,
                width: 80,
                height: 50,
              ),
              Container(
                color: Colors.deepPurple,
                width: 200,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 100,
                height: 50,
              ),
              Container(
                color: Colors.lightBlueAccent,
                width: 50,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
