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
// creat function :-
SnackBar snackBar = const SnackBar(
  content: Text('Status Updated'),
  behavior: SnackBarBehavior.floating,
  showCloseIcon: true,

);

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Click Me !'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}