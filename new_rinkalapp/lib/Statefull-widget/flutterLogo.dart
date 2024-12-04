import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: StatefulExample(),
    );
  }
}

class StatefulExample extends StatefulWidget {
  const StatefulExample({super.key});

  @override
  State<StatefulExample> createState() => _StatefulExampleState();
}
var num = 0;
class _StatefulExampleState extends State<StatefulExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body:  const Center(
        child: Column(
          children: [
            Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterLogo(
                      style: FlutterLogoStyle.horizontal,
                      size: 150,
                    )
                  ],
                ),
            Placeholder(
                fallbackHeight: 150,
                fallbackWidth: 200,
                strokeWidth: 5,
                color: Colors.redAccent,
            )
          ],
        ),
        ),
    );
  }
}