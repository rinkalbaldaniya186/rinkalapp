import 'package:flutter/material.dart';
import 'package:rinkalapp/statefull-widget/model/student.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

List<Student> listofStu = [];
bool isSelected = false;
var tapIndex;

class _ListViewExampleState extends State<ListViewExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listofStu.add(
        Student('Ravi', 'Flutter', 'assets/image/boy.png'));
    listofStu.add(
        Student('Vivek', 'Web Designing', 'assets/image/boy2.png'));
    listofStu.add(
        Student('Vanraj', 'FullStack Development', 'assets/image/boy3.png'));
    listofStu.add(
        Student('Akshay', 'FullStack Development', 'assets/image/boys.png'));
    listofStu.add(
        Student('Ketan', 'Graphics Design', 'assets/image/boy.png'));
    listofStu.add(
        Student('Ravi', 'Flutter', 'assets/image/boy.png'));
    listofStu.add(
        Student('Vivek', 'Web Designing', 'assets/image/boy2.png'));
    listofStu.add(
        Student('Vanraj', 'FullStack Development', 'assets/image/boy3.png'));
    listofStu.add(
        Student('Akshay', 'FullStack Development', 'assets/image/boys.png'));
    listofStu.add(
        Student('Ketan', 'Graphics Design', 'assets/image/boy.png'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Students'),
      ),
      body: ListView.builder(
        itemCount: listofStu.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${listofStu[index].name}'),
            subtitle: Text('${listofStu[index].course}'),
            leading: CircleAvatar(
              backgroundImage: AssetImage('${listofStu[index].profilePic}'),
            ),
            trailing: const Icon(Icons.add_call),
            selected: (tapIndex==index) ? true : false,
            selectedTileColor: Colors.blue,
            selectedColor: Colors.black,
            onTap: () {
              setState(() {
                tapIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
