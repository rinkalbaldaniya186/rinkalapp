import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Age Calculator',
      home: const AgeCalculatorScreen(),
    );
  }
}

class AgeCalculatorScreen extends StatefulWidget {
  const AgeCalculatorScreen({super.key});

  @override
  _AgeCalculatorScreenState createState() => _AgeCalculatorScreenState();
}

class _AgeCalculatorScreenState extends State<AgeCalculatorScreen> {
  String myAge = '';
  String myAge1 = '';
  String myAge2 = '';
  bool dateSelected = false;

  void pickDob(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate != null) {
        calculateAge(pickedDate);
      }
    });
  }

  void calculateAge(DateTime birth) {
    DateTime now = DateTime.now();

    int years = now.year - birth.year;
    int months = now.month - birth.month;
    int days = now.day - birth.day;

    if (days < 0) {
      months--;
      days += DateTime(now.year, now.month, 0).day;
    }

    if (months < 0) {
      years--;
      months += 12;
    }

    setState(() {
      myAge = '$years years';
      myAge1 = '$months months';
      myAge2 = '$days days';
      dateSelected = true; // Set to true after date is picked
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Age Calculator", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),),
        backgroundColor: Colors.deepPurple.shade200,
        centerTitle: true,
        toolbarHeight: 70,
        titleTextStyle: TextStyle(fontFamily: 'Kanit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // If no date is selected, show the "Select your birth date" message
            if (!dateSelected)
              const Text(
                'Select your birth date',
                style: TextStyle(fontSize: 30),
              ),

            // If a date is selected, show the "Your age is" message
            if (dateSelected)
              const Text(
                'Your age is',
                style: TextStyle(fontSize: 40),
              ),

            const SizedBox(height: 10),

            // Only show the age columns if myAge is not empty
            if (myAge.isNotEmpty || myAge1.isNotEmpty || myAge2.isNotEmpty)
              Column(
                children: [
                  if (myAge.isNotEmpty)
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade100,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          myAge,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(height: 10),
                  if (myAge1.isNotEmpty)
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade100,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          myAge1,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(height: 10),
                  if (myAge2.isNotEmpty)
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade100,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          myAge2,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            const SizedBox(height: 30),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () => pickDob(context),
                child: const Text('Pick Your Date of Birth', style: TextStyle(fontSize: 20),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
