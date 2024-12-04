import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Students'),
      ),
      body: ListView(
        reverse: false,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 150,
            color: Colors.pink.shade100,
            child: const Text('Student 1'),
          ),
          Container(
            height: 150,
            color: Colors.pink.shade200,
            child: const Text('Student 1'),
          ),
          Container(
            height: 150,
            color: Colors.pink.shade300,
            child: const Text('Student 1'),
          ),
          Container(
            height: 150,
            color: Colors.pink.shade400,
            child: const Text('Student 1'),
          ),
          Container(
            height: 150,
            color: Colors.pink.shade500,
            child: const Text('Student 1'),
          ),
          Container(
            height: 150,
            color: Colors.pink.shade600,
            child: const Text('Student 1'),
          ),
          Container(
            height: 150,
            color: Colors.pink.shade700,
            child: const Text('Student 1'),
          ),
          Container(
            height: 150,
            color: Colors.pink.shade800,
            child: const Text('Student 1'),
          ),
          Container(
            height: 150,
            color: Colors.pink.shade900,
            child: const Text('Student 1'),
          ),
          Container(
            height: 150,
            color: Colors.pink,
            child: const Text('Student 1'),
          ),
        ],
      ),
    );
  }
}
