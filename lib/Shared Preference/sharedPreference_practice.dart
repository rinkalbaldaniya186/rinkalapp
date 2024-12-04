import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: SharedPreferencePractice(),
    );
  }
}

class SharedPreferencePractice extends StatefulWidget {
  const SharedPreferencePractice({super.key});

  @override
  State<SharedPreferencePractice> createState() =>
      _SharedPreferencePracticeState();
}
  class _SharedPreferencePracticeState extends State<SharedPreferencePractice> {

    final _nameController = TextEditingController();
    final _ageController = TextEditingController();

    Future<void> _saveRecord(String name, int age) async {
      try {
        var pref = await SharedPreferences.getInstance();
        pref.setString("NAME", name);
        pref.setInt("AGE", age);

        print('Save Record');
      }
      catch (e) {
        print(e.toString());
      }
    }


    Future<void> _readRecord() async {
      try {
        var pref = await SharedPreferences.getInstance();
        var name = pref.getString("NAME") ?? '';
        var age = pref.getInt("AGE") ?? 0;

        print(
            "Name : $name\n"
            "Age : $age"
        );
      }

      catch (e) {
        print(e.toString());
      }
    }


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
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
                            _ageController.text.trim()
                        ); // convert string to int

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
