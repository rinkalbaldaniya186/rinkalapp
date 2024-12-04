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
          title: const Text('Home'),
          backgroundColor: Colors.lightBlue,
          toolbarOpacity: 0.9,
          toolbarHeight: 80,
          centerTitle: true,
          titleTextStyle: const TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),
        ),
        body: Stack(
          children : [
            Column(
              children: [
                Expanded(
                    child: Container(
                      color: Colors.grey,
                      height: 100,
                      width: double.infinity,
                    )
                ),
              ],
            ),
            Positioned(
              // top: 10,
              left: 45,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 50,
                    width: 300,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print('Elevated Button Pressed');
                      },
                      child: const Text('Elevated Button')
                  ),
                  OutlinedButton(
                      onPressed: () {
                        print('Outline Button Pressed');
                      },
                      child: const Text('Outline Button')
                  ),
                  TextButton(
                      onPressed: () {
                        print('Text Button Pressed');
                      },
                      child: const Text('Text Button'))
                ],
              ),
            ),
            const Positioned(
              top: 8,
              left: 60,
              child: Text('Search',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,)),
            )
          ],
        ),
      ),
    );
  }
}