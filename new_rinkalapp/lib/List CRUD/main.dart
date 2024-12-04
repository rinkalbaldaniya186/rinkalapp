import 'package:flutter/material.dart';
import 'package:new_rinkalapp/List%20CRUD/job-create-update.dart';
import 'job.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: ListCRUD(),
    );
  }
}

class ListCRUD extends StatefulWidget {
  const ListCRUD({super.key});


  @override
  State<ListCRUD> createState() => _ListCRUDState();
}

List<Job> listofJobs = [];

class _ListCRUDState extends State<ListCRUD> {

  @override
  void initState() {
    listofJobs.add(Job(1, 'Flutter Developer', 'Doing Flutter Job', 3000));
    listofJobs.add(Job(2, 'FullStack Developer', 'Doing Web Developing Job', 4000));
    listofJobs.add(Job(3, 'UI UX Desiging', 'UI UX Designing Job', 2000));
    listofJobs.add(Job(4, 'Account Assistant', 'Doing Accounting', 8000));
    listofJobs.add(Job(5, 'Graphics Designing', 'Creating Graphics', 13000));

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('buid now');
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Operation'),
      ),
      body: ListView.builder(
        itemCount: listofJobs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${listofJobs[index].jobTitle}'),
            subtitle: Text('${listofJobs[index].jobDisc} Salary: ${listofJobs[index].salary}'),
            trailing: PopupMenuButton(
              onSelected: (value) {
                switch (value) {
                  case 'Update':
                    Navigator.push(context, MaterialPageRoute(builder: (context) => JobCreateUpdate(listofJobs[index].id, listofJobs),)).then((value) => setState(() {}));
                  case 'Delete':
                    print('Delete Button Pressed');
                    setState(() {
                      listofJobs.removeAt(index);
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
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) => JobCreateUpdate(0, listofJobs),)).then((value) => setState(() {}));
        },
        backgroundColor: Colors.purple.shade100,
        elevation: 20,
        icon: const Icon(Icons.add,color: Colors.black,size: 30,),
        label: const Text('Add Job'),
      ),
    );
  }
}