import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: CustomListViewExample(),
    );
  }
}

class CustomListViewExample extends StatefulWidget {
  const CustomListViewExample({super.key});

  @override
  State<CustomListViewExample> createState() => _CustomListViewExampleState();
}

class _CustomListViewExampleState extends State<CustomListViewExample> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: ListView.custom(childrenDelegate: SliverChildListDelegate(
         List.generate(20, (index) => _getWidget(index))
        ),
      )
    );
  }

  _getWidget(int index) {
    return
    (index%2==0)?
    Container(
      width: 100,
      height: 100,
      color: Colors.redAccent,
    )
        :
    Container(
    width: 100,
    height: 10,
    color: Colors.cyan,
    );
  }
}

