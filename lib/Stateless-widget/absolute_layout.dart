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
          title: const Text('Absolute Layout',style: TextStyle(color: Colors.black,fontSize: 30),),
          backgroundColor: Colors.lightBlueAccent.shade100,
        ),
        body: Container(
            color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        color : Colors.yellow,
                        width: 250,
                        height: 50,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        color: Colors.redAccent,
                        width: 300,
                        height: 90,
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        color: Colors.lightBlueAccent,
                        width: 270,
                        height: 50,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        color: Colors.lightBlue,
                        width: 250,
                        height: 50,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}