import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}
TextEditingController _nameController = TextEditingController();
class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Screen One'),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Enter Your Name', style: TextStyle(fontSize: 22)),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Name'
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    var name = _nameController.text.trim();
                    Navigator.pushNamed(context, '/second');
                  },
                  child: const Text('Screen Two'))
            ],
          ),
        ),
      ),
    );
  }
}
