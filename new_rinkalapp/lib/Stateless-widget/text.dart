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
          backgroundColor: Colors.blueAccent,
          title: const Text('Material App Bar',),

        ),
        body: Center(
          child: Container(
            //color: Colors.blueAccent.shade200,
            child: const Text(
              'Hello World \nI am Angel',
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight:  FontWeight.bold,
                  height: 2,
                  fontSize: 25,
                  backgroundColor: Colors.lightBlueAccent,
                  fontFamily: 'Kanit',
                  wordSpacing: 12,
                  letterSpacing: 2,
                  shadows: [Shadow(color: Colors.red,blurRadius: 15),Shadow(color: Colors.yellow,blurRadius: 5)],
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.deepPurple,
                  decorationThickness: 3,
                ),
              maxLines: 3,
             // textDirection: TextDirection.rtl,
              textScaler: TextScaler.linear(1),
              textAlign: TextAlign.center,

              ),

            ),
          ),
        ),

    );
  }
}
