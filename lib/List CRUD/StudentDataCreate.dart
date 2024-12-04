import 'package:flutter/material.dart';
import 'package:rinkalapp/List%20CRUD/Main(Student).dart';

class StudentDataCreate extends StatefulWidget {
  List<StudentData> listofStu;
  int no;
  StudentDataCreate(this.no, this.listofStu, {super.key});

  @override
  State<StudentDataCreate> createState() => _StudentDataCreateState(no, listofStu);
}

TextEditingController _nameController = TextEditingController();
TextEditingController _courseController = TextEditingController();
TextEditingController _feesController = TextEditingController();

class _StudentDataCreateState extends State<StudentDataCreate> {
  List<StudentData> listofStu;
  int no;
  _StudentDataCreateState(this.no, this.listofStu);

  @override
  Widget build(BuildContext context) {

    if(no!=0){
      _nameController.text = listofStu[no - 1].name;
      _courseController.text = listofStu[no - 1].course;
      _feesController.text = listofStu[no - 1].fees.toString();
    }
    else{
      _nameController.text = '';
      _courseController.text = '';
      _feesController.text = '';
    }

     return Scaffold(
      appBar: AppBar(
        title:  (no != 0) ? const Text('Update Detail', style: TextStyle(color: Colors.black, fontSize: 27, fontFamily: 'AbrilFatFace'),) : const Text('Add Detail', style: TextStyle(color: Colors.black, fontSize: 27, fontFamily: 'AbrilFatFace'),),
        backgroundColor: Colors.purple.shade100,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.black,width: 3),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                     borderSide: BorderSide(color: Colors.black,width: 3),
                  ),
                  labelText: 'Name',
                  floatingLabelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),
                  hintText: 'Name',
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: _courseController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black,width: 3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.black,width: 3),
                  ),
                  labelText: 'Course',
                  floatingLabelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),
                  hintText: 'Course',
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                 controller: _feesController,
                 decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                   enabled: true,
                   enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(20)),
                       borderSide: BorderSide(color: Colors.black,width: 3),
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(20)),
                     borderSide: BorderSide(color: Colors.black,width: 3),
                   ),
                  labelText: 'Fees',
                  floatingLabelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),
                  hintText: 'fees',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: () {

                    if(no!=0){
                      listofStu[no - 1].name = _nameController.text;
                      listofStu[no - 1].course = _courseController.text;
                      listofStu[no - 1].fees = _feesController.text;
                      Navigator.pop(context);
                    }
                    else {
                      listofStu.add(StudentData(listofStu.last.no+1, _nameController.text, _courseController.text, _feesController.text));
                      Navigator.pop(context);
                    }
                  },
                  child: (no!=0) ? const Text('Update Detail', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),) : const Text('Add Detail', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),)),
            ],
          ),
        ),
      ),
    );
  }
}

// class DataList {
//   var nameN = _nameController;
//   var courseN = _courseController;
//   var feesN = _feesController;
//   DataList(this.nameN,this.courseN, this.feesN);
// }
