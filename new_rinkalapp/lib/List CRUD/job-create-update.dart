import 'package:flutter/material.dart';
import 'package:new_rinkalapp/List%20CRUD/job.dart';


class JobCreateUpdate extends StatefulWidget {
  List<Job> listofJobs;
  int id;
  JobCreateUpdate(this.id,this.listofJobs, {super.key});


  @override
  State<JobCreateUpdate> createState() => _JobCreateUpdateState(id, listofJobs);
}

  TextEditingController _jobTitleController = TextEditingController();
  TextEditingController _jobDiscController = TextEditingController();
  TextEditingController _salaryController = TextEditingController();

class _JobCreateUpdateState extends State<JobCreateUpdate> {
  List<Job> listofJobs;
  int id;
  _JobCreateUpdateState(this.id, this.listofJobs);

  @override
  Widget build(BuildContext context) {

    if(id!=0) {
      _jobTitleController.text = listofJobs[id - 1].jobTitle;
      _jobDiscController.text = listofJobs[id - 1].jobDisc;
      _salaryController.text = listofJobs[id - 1].salary.toString();
    }
    else{
      _jobTitleController.text = '';
      _jobDiscController.text = '';
      _salaryController.text = '';
    }


    return Scaffold(
      appBar: AppBar(
        title: (id != 0) ? const Text('Update Job') : const Text('Add Job'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              TextField(
                controller: _jobTitleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Job Title',
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: _jobDiscController,

                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Job Discription',
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: _salaryController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Salary',
                ),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: () {

                    if(id!=0) {
                      listofJobs[id - 1].jobTitle = _jobTitleController.text;
                      listofJobs[id - 1].jobDisc = _jobDiscController.text;
                      listofJobs[id - 1].salary = _salaryController.text;
                      Navigator.pop(context);
                    }
                    else
                      {
                        listofJobs.add(Job(listofJobs.last.id+1, _jobTitleController.text, _jobDiscController.text, _salaryController.text));
                        Navigator.pop(context);
                      }
                  },
                  child: (id!=0) ? const Text('Update Job') : const Text('Add Job')),
            ],
          ),
        ),
      ),
    );
  }
}
