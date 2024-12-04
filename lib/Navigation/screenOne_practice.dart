import 'package:flutter/material.dart';
import 'package:rinkalapp/navigation/screenTwo_practice.dart';

class screenOnePractice extends StatefulWidget {
  const screenOnePractice({super.key});

  @override
  State<screenOnePractice> createState() => _screenOnePracticeState();
}
TextEditingController _nameController = TextEditingController();

class _screenOnePracticeState extends State<screenOnePractice> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One Prac.'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Screen One Prac.',style: TextStyle(fontSize: 22),),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Name',
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: () {
                var name = _nameController.text.trim();
                Navigator.push(context, MaterialPageRoute(builder: (context) => screenTwoPractice(name),));
              //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screenTwoPractice(),));
              }, child: const Text('Screen two -> '))
            ],
          ),
        ),
      ),
    );
  }
}
