import 'package:flutter/material.dart';
import 'package:new_rinkalapp/navigation/model/studentClass.dart';
import 'package:new_rinkalapp/navigation/screenThree_practice.dart';

class screenTwoPractice extends StatefulWidget {

  String name;
  screenTwoPractice(this.name, {super.key});

  @override
  State<screenTwoPractice> createState() => _screenTwoPracticeState(name);
}

List<Student> studentData = [];

// studentData.add(Student('Rinkal','Flutter'))
// String Course = 'Flutter';

class _screenTwoPracticeState extends State<screenTwoPractice> {

  String name;
  _screenTwoPracticeState(this.name);

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    studentData.add(Student('Rinkal','Flutter','assets/image/girl1.jpg',));
    studentData.add(Student('Dhruvi','Full Stack Development','assets/image/girl2.jpg'));
    studentData.add(Student('Kaushika', 'Web Development','assets/image/girl3.jpg'));
    studentData.add(Student('Vishva', 'Graphic Designing','assets/image/girl4.jpg'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two Prac.',style: TextStyle(fontSize: 22),),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome !!! $name',style: const TextStyle(fontSize: 25),),
              const SizedBox(height: 10,),
              ElevatedButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => screenThreePractice(studentData),));
                   },
                   child: const Text('Student Detail -->>')
              )
            ],
          ),
        ),
      ),
    );
  }
}
