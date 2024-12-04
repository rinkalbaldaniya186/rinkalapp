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
        body: const SnackBarExample(),
      ),
    );
  }
}

SnackBar snackBar = SnackBar(
  content: const Text('Hello ! Your Status Updated'),
  behavior: SnackBarBehavior.floating,
 // showCloseIcon: false,
  backgroundColor: Colors.black,
  elevation: 50,
  width: 350,
  action: SnackBarAction(
     label: 'Undo',
     onPressed: () {
        print('Undo');
     },
  ),
);

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Click'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}