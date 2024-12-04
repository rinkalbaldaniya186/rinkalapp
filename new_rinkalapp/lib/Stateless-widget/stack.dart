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
        body: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                  height: 100,
                  //color: Colors.grey.shade800,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                    ),
                    width: double.infinity,
                    height: 100,
                    //color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
            const Positioned(
              top: 50,
              left: 150,
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                minRadius: 15,
                maxRadius: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
