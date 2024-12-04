import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Shared Preference',
        home: SplashScreenExample()
    );
  }
}

class SplashScreenExample extends StatefulWidget {
  const SplashScreenExample({Key? key}) : super(key: key);

  @override
  State<SplashScreenExample> createState() => _SplashScreenExampleState();
}

class _SplashScreenExampleState extends State<SplashScreenExample> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const SharedPrefExample()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}


class SharedPrefExample extends StatefulWidget {
  const SharedPrefExample({Key? key}) : super(key: key);

  @override
  State<SharedPrefExample> createState() => _SharedPrefExampleState();
}

class _SharedPrefExampleState extends State<SharedPrefExample> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  Future<void> _saveRecord(String name, int age) async {
    try {
    var pref = await SharedPreferences.getInstance();
      pref.setString('NAME', name);
      pref.setInt('AGE', age);

      print('record saved');
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _readRecord() async {
    try {
      var pref = await SharedPreferences.getInstance();
      var name = pref.getString("NAME") ?? "";
      var age = pref.getInt("AGE") ?? 0;

      print('''
           name : $name
           age : $age
      ''');

    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preference'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(hintText: 'Enter name'),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: _ageController,
                decoration: const InputDecoration(hintText: 'Enter age'),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      String name = _nameController.text.trim();
                      int age = int.parse(
                          _ageController.text.trim()); // convert string to int

                      _saveRecord(name, age);
                    },
                    child: const Text('Save'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _readRecord();
                    },
                    child: const Text('Read'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}