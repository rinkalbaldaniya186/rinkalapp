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
          title: const Text('Bottom Sheet',style: TextStyle(color: Colors.black,fontSize: 30),),
          backgroundColor: Colors.lightBlueAccent.shade100,
        ),
        body: const BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Press'),
        onPressed: () {
          Scaffold.of(context).showBottomSheet((context) {
            return Container(
              width: double.infinity,
              height: 100,
              color: Colors.lightBlueAccent,
              child: Center(
                child: ElevatedButton(
                  child: const Text('Exit'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            );
          });
        },
      ),
    );
  }
}