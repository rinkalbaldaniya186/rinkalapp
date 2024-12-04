import 'package:flutter/material.dart';
import 'package:new_rinkalapp/navigation/model/studentClass.dart';

class screenThreePractice extends StatefulWidget {
  List<Student> studentData;
  screenThreePractice(this.studentData, {super.key});

  // String Course;
  // screenThreePractice(this.Course, {super.key});

  @override
  State<screenThreePractice> createState() => _screenThreePracticeState(studentData);
}

class _screenThreePracticeState extends State<screenThreePractice> {

  List<Student> studentData;
  _screenThreePracticeState(this.studentData);

  // String Course;
  // _screenThreePracticeState(this.Course);

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
              // ListTile(
              //   leading: CircleAvatar(
              //     maxRadius: 35,
              //     backgroundImage: AssetImage('${studentData[0].profilePic}'),
              //   ),
              //   title: Text('${studentData[0].name}',style: TextStyle(fontSize: 22)),
              //   subtitle: Text('${studentData[0].course}',style: TextStyle(fontSize: 18),),
              //   tileColor: Colors.grey.shade200,
              // ),
              Row(
                children: [
                  CircleAvatar(
                    maxRadius: 35,
                    backgroundImage: AssetImage('${studentData[0].profilePic}'),
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name : ${studentData[0].name}',style: const TextStyle(fontSize: 19),),
                      Text('Course : ${studentData[0].course}',style: const TextStyle(fontSize: 17),),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  CircleAvatar(
                    maxRadius: 35,
                    backgroundImage: AssetImage('${studentData[1].profilePic}'),
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name : ${studentData[1].name}',style: const TextStyle(fontSize: 19),),
                      Text('Course : ${studentData[1].course}',style: const TextStyle(fontSize: 17),),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
               children: [
                 CircleAvatar(
                   maxRadius: 35,
                   backgroundImage: AssetImage('${studentData[2].profilePic}'),
                 ),
                 const SizedBox(width: 20,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Name : ${studentData[2].name}',style: const TextStyle(fontSize: 19),),
                     Text('Course : ${studentData[2].course}',style: const TextStyle(fontSize: 17),),
                   ],
                 ),
               ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  CircleAvatar(
                    maxRadius: 35,
                    backgroundImage: AssetImage('${studentData[3].profilePic}'),
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name : ${studentData[3].name}',style: const TextStyle(fontSize: 19),),
                      Text('Course : ${studentData[3].course}',style: const TextStyle(fontSize: 17),),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
