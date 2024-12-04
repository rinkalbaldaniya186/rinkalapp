import 'package:flutter/material.dart';
import 'model/class.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'User List',
        home: UserListExample()
    );
  }
}

class UserListExample extends StatefulWidget {
  const UserListExample({Key? key}) : super(key: key);

  @override
  State<UserListExample> createState() => _UserListExampleState();
}

class _UserListExampleState extends State<UserListExample> {
  List<Student> studentList = [];
  List<Student> checkedList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    studentList.add(Student(11, 'Abhi', 'Flutter'));
    studentList.add(Student(22, 'Mitansh', 'Android'));
    studentList.add(Student(33, 'Kinjal', 'Java'));
    studentList.add(Student(44, 'Hitul', 'Python'));
    studentList.add(Student(55, 'Hiren', 'PHP'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: ListView.builder(
        itemCount: studentList.length,
        itemBuilder: (context, index) {
          return getListTile(studentList[index]);
        },
      ),
    );
  }

  Widget getListTile(Student student) {
    return ListTile(
      onTap: () {
        setState(() {
          student.isChecked = !student.isChecked ;

          if(student.isChecked){
            checkedList.add(student);
          }
          else{
            checkedList.removeWhere((element) => element.roll == student.roll);
          }

          print(checkedList);
        });
      },
      tileColor: student.isChecked ? Colors.grey.shade400 : Colors.white,
      leading: const Icon(Icons.account_circle, size: 30,),
      title: Text(student.name),
      subtitle: Text(student.course),
      trailing: Checkbox(
        value: student.isChecked,
        onChanged: (value) {
          setState(() {
            student.isChecked = value! ;

            if(student.isChecked){
              checkedList.add(student);
            }else{
              checkedList.removeWhere((element) => element.roll == student.roll);
            }
            print(checkedList);
          });
        },
      ),
    );
  }
}