import 'package:flutter/material.dart';
import 'package:new_rinkalapp/List%20CRUD/StudentDataCreate.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: StudentDetailPage(), // .Default
    );
  }
}

class StudentDetailPage extends StatefulWidget {
  const StudentDetailPage({super.key});


  // String? name;
  // String? course;
  // var fees;
  // StudentDetailPage(this.name, this.course, this.fees, {super.key});

  // StudentDetailPage.Default();

  @override
  State<StudentDetailPage> createState() => _StudentDetailPageState(); // name,course,fees
}

List<StudentData> listofStu = [];

  class _StudentDetailPageState extends State<StudentDetailPage> {

  @override
  void initState() {
    // TODO: implement initState

    listofStu.add(StudentData(1, 'Rinkal','Flutter Development',50000));
    listofStu.add(StudentData(2, 'Vishva','Graphic Designing ',40000));
    listofStu.add(StudentData(3, 'Kaushika','Web Development',45000));
    listofStu.add(StudentData(4, 'Mitrusha','Full Stack Development',75000));
    listofStu.add(StudentData(5, 'Khushi','Digital Marketing',35000));

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Student Detail Page', style: TextStyle(color: Colors.black, fontSize: 27, fontFamily: 'AbrilFatFace'),),
        backgroundColor: Colors.purple.shade100,
      ),
      body: ListView.separated(
        itemCount: listofStu.length,
        itemBuilder: (context, index) {
        return ListTile(
          tileColor: Colors.purple.shade50,
          title:  Text(listofStu[index].name,style: const TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.w500),),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(listofStu[index].course,style: const TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w400),),
              Text('${listofStu[index].fees}',style: const TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w400),),
            ],
          ),
          leading: CircleAvatar(
            maxRadius: 20,
            backgroundColor: Colors.white,
            child: Text('${listofStu[index].no}'),
          ),
          trailing: PopupMenuButton(
                onSelected: (value) {
                  switch (value) {
                    case 'Update':
                     Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDataCreate(listofStu[index].no,listofStu),)).then((value) => setState(() {}));
                    case 'Delete':
                      print('Delete Button Pressed');
                      setState(() {
                        listofStu.removeAt(index);
                      });
                  }
                },
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem(value: 'Update', child: Text('Update')),
                    const PopupMenuItem(value: 'Delete', child: Text('Delete')),
                  ];
                },
              ),
         );
      }, separatorBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.black,
            height: 2,
          );
      },
    ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade100,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDataCreate(0, listofStu),)).then((value) => setState(() {}));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class StudentData{

  var no;
  String name;
  String course;
  var fees;

  StudentData(this.no,this.name, this.course, this.fees);
}