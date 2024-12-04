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

SnackBar snackBar(String msg, double w){
  return SnackBar(
    content: Text(msg),
    width: w,
    behavior: SnackBarBehavior.floating,
    showCloseIcon: true,
  );
}

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Click Me !'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(snackBar('Hello, New Message Arriaved',250));
        },
      ),
    );
  }
}