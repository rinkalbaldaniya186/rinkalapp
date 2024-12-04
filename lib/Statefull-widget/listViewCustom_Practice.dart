import 'package:flutter/material.dart';
import 'model/student.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: _CustomListViewExampleState(),
    );
  }
}

class _CustomListViewExampleState extends StatefulWidget {
  const _CustomListViewExampleState();

  @override
  State<_CustomListViewExampleState> createState() => _CustomListViewExampleStateState();
}

class _CustomListViewExampleStateState extends State<_CustomListViewExampleState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: ListView.custom(childrenDelegate: SliverChildListDelegate(
            [
              const ListTile(
                leading: Icon(Icons.map),
                title: Text('Map'),
              ),
              const ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Album'),
              ),
              InkWell(
                onTap:  () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const callPage(),));
                },
                child: ListTile(
                    tileColor: Colors.grey,
                    leading: const Icon(Icons.phone,color: Colors.black,),
                    title: const Padding(
                      padding: EdgeInsets.only(top: 20,bottom: 20),
                      child: Text('Phone',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                       //  Navigator.push(context, MaterialPageRoute(builder: (context) => callPage(),));
                        },
                        icon: const Icon(Icons.more_vert))
                ),
              ),
            ]
        ),
        )
    );
  }
}


class callPage extends StatefulWidget {
  const callPage({super.key});

  @override
  State<callPage> createState() => _callPageState();
}

List<Student> listofStu = [];
bool isSelected = false;
var tapIndex;

class _callPageState extends State<callPage> {

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
        Student('Dipak', 'Flutter', 'assets/image/boy.png'));
    listofStu.add(
        Student('Nayan', 'Web Designing', 'assets/image/boy2.png'));
    listofStu.add(
        Student('Darshak', 'FullStack Development', 'assets/image/boy3.png'));
    listofStu.add(
        Student('Parth', 'FullStack Development', 'assets/image/boys.png'));
    listofStu.add(
        Student('Kiyan', 'Graphics Design', 'assets/image/boy.png'));
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