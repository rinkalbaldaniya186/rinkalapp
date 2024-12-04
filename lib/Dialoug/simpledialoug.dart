import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: DialougExample(),
    );
  }
}

class DialougExample extends StatefulWidget {
  const DialougExample({super.key});

  @override
  State<DialougExample> createState() => _DialougExampleState();
}

class _DialougExampleState extends State<DialougExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () async {
                  var course = await _showSimpleDialoug(context);
                  print(course);
                },
                child: const Text('Simple Dialoug')),
            ElevatedButton(
                onPressed: () async {
                  var ans = await _alertDialoug(context);
                  print(ans);
                },
                child: const Text('Alert Dialoug')
            ),
            ElevatedButton(
                onPressed: () async {
                  var loginAns = await _customDialoug(context);
                  print(loginAns);
                },
                child: const Text('Custom Dialoug')
            ),
            ElevatedButton(
                onPressed: () {
                  _datePicker(context);
                },
                child: const Text('DatePicker Dialoug')),
          ],
        ),
      ),
    );
  }

  Future<String?> _showSimpleDialoug(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          contentPadding: const EdgeInsets.all(18),
          title: const Text('List of Courses'),
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context, 'App Dev');
                },
                child: const Text(
                  'Application Development',
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Web Development',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Digital Markting',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Graphics Designing',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        );
      },
    );
  }

  Future<String> _alertDialoug(BuildContext context) async {
    return await showDialog(
      barrierDismissible: false,
      barrierColor: Colors.blue.shade50,
      barrierLabel: 'Label',
      context: context,
      builder: (context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          titlePadding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          elevation: 50,
          backgroundColor: Colors.cyan.shade100,
          icon: const Icon(Icons.cancel),
          iconColor: Colors.redAccent.shade100,
          title: const Text('Alert Dialoug'),
          content: const Text(
              'CorelDRAW is a program for graphic design. It\'s an editor for vector illustration, photo editing, and typography. It\'s a suite of several programs that has'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'Okay');
                },
                child: const Text('Okay')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancle')),
          ],
        );
      },
    );
  }

  Future<String> _customDialoug(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.purple.shade50,
          elevation: 20,
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Login Form',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                    decoration: InputDecoration(
                        label: Text('User Name'),
                        border: OutlineInputBorder())),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                    decoration: InputDecoration(
                        label: Text('Password'), border: OutlineInputBorder())),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, 'Log in');
                    },
                    child: const Text('Log In')),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _datePicker(BuildContext context) async {
    var date = await showDatePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
        cancelText: 'Cancle',
        //currentDate:DateTime.now(),
        errorFormatText: 'Wrong Format',
        errorInvalidText: 'Invalid Date',
        fieldHintText: 'yyy/mmm/ddd',
        helpText: 'Enter Date',
        //initialDate: DateTime.now(),
        selectableDayPredicate: _dayPredict,
    );
    print(date);
  }

  bool _dayPredict(DateTime day) {
    if (day.isAfter(DateTime.now().subtract(const Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(const Duration(days: 30)))) {
      return true;
    } else {
      return false;
    }
  }
}