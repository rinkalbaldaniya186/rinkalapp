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
          title: const Text('Home',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Kanit'
              ),
            textScaler: TextScaler.linear(1),
          ),
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
          toolbarHeight: 70,
          toolbarOpacity: 0.9,
          shadowColor: Colors.black,
          elevation: 20,
          actions: [
            IconButton(
                onPressed: () {
                   print('Pressed Home Button');
                },
                icon: const Icon(Icons.home),
              iconSize: 25,

            ),
            IconButton(
                onPressed: () {
                  print('Pressed Profile Button');
                },
                icon: const Icon(Icons.person),
                iconSize: 25,
            )
          ],
          leading: IconButton(
               onPressed: () {
                 print('Pressed Back Button');
              },
               icon: const Icon(Icons.arrow_back),
            iconSize: 25,
          ),
        ),
        body: Container(
          color: Colors.grey,
          height: 200,

          child: Row(
            children: [
              Container(
                color: Colors.deepOrange,
                height: 50,
                width: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
