import 'package:flutter/material.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({super.key});

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Home Page'),
      ),
      body: const Center(
        child: Text('Welcome app Home Page'),
      ),
    );
  }
}
