import 'package:flutter/material.dart';
import 'package:new_rinkalapp/navigation/screenThree.dart';

class ScreenTwo extends StatefulWidget {
  String? name = 'Guest';
  ScreenTwo(this.name, {super.key});
  ScreenTwo.withoutData({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState(name!);
}

class _ScreenTwoState extends State<ScreenTwo> {
  String name;
  _ScreenTwoState(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Screen Two'),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome $name', style: const TextStyle(fontSize: 22)),
              const SizedBox(height: 10,),
              Row(
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: const Text('Back')),

                  ElevatedButton(onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ScreenThree(),));
                  }, child: const Text('Screen Three')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
