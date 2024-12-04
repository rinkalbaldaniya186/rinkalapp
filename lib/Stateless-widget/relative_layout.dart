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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.blueAccent,
                    width: 280,
                    height: 100,
                  )
                ],
              ),
              SizedBox(
                height: 200,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        color: Colors.lightGreen,
                        width: 280,
                        height: 50,
                      ),
                      Container(
                        color: Colors.lightGreenAccent,
                        width: 280,
                        height: 50,
                      ),
                      Container(
                        color: Colors.green,
                        width: 280,
                        height: 50,
                      )
                    ]
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Container(
                        color: Colors.redAccent,
                        width: 150,
                        height: 50,
                      ),
                      Container(
                        color: Colors.deepOrangeAccent,
                        width: 150,
                        height: 50,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}