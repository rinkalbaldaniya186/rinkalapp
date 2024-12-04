import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: listViewSeparatedExample(),
    );
  }
}

class listViewSeparatedExample extends StatefulWidget {
  const listViewSeparatedExample({super.key});

  @override
  State<listViewSeparatedExample> createState() => _listViewSeparatedExampleState();
}

class _listViewSeparatedExampleState extends State<listViewSeparatedExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView.separated")),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
        return Container(
           height: 50,
           color: Colors.amber[100 * (index % 10)],
              child: Center(child: Text('Item $index')),
        );
      },
       separatorBuilder: (BuildContext context, int index) =>
         const Divider(color: Colors.black),
      ),
    );
  }
}
