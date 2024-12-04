import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: SnakeBarExample(),
    );
  }
}

class SnakeBarExample extends StatefulWidget {
  const SnakeBarExample({super.key});

  @override
  State<SnakeBarExample> createState() => _SnakeBarExampleState();
}

double _width = 330;

class _SnakeBarExampleState extends State<SnakeBarExample> {
  SnackBar getSnackBar(Color color, String body) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      width: 330,
      content: Text(body),
      showCloseIcon: true,
      //elevation: 20,
      padding: const EdgeInsets.all(10),
      backgroundColor: color,
      //action: SnackBarAction(label: label, onPressed: onPressed),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
              child: const Text('Show Red'),
              onPressed: () {
                _width = 100;
                print(_width);
                ScaffoldMessenger.of(context).showSnackBar(getSnackBar(Colors.red, 'This is Red SnackBar'));
              },
            ),
            ElevatedButton(
              child: const Text('Show Green'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(getSnackBar(Colors.green, 'This is Green SnackBar'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
