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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    num++;
                    print(num);
                  });
                },
                child: const Text('+')),
            Text('$num'),
            ElevatedButton(
                onPressed: () {
                    setState(() {
                      num--;
                      print(num);
                    });
                },
                child: const Text('-')
            )
          ],
        ),
      ),
    );
  }
}
