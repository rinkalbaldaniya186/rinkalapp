import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: listViewExample(),
    );
  }
}

class listViewExample extends StatefulWidget {
  const listViewExample({super.key});

  @override
  State<listViewExample> createState() => _listViewExampleState();
}

class _listViewExampleState extends State<listViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors List :-',style: TextStyle(color: Colors.black,fontSize: 30)),
      ),
      body: ListView(
          children: [
            Container(
              height: 150,
              color: Colors.pink,
              padding: const EdgeInsets.only(left: 155,top: 45),
              child: const Text('Pink',style: TextStyle(
                  fontSize: 40,
                  shadows: [
                    Shadow(color: Colors.black,blurRadius: 4)
                 ]
               ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.blue,
              padding: const EdgeInsets.only(left: 155,top: 45),
              child: const Text('Blue',style: TextStyle(
                  fontSize: 40,
                  shadows: [
                    Shadow(color: Colors.black,blurRadius: 4)
                  ]
              ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.yellow,
              padding: const EdgeInsets.only(left: 145,top: 45),
              child: const Text('yellow',style: TextStyle(
                  fontSize: 40,
                  shadows: [
                    Shadow(color: Colors.black,blurRadius: 4)
                  ]
               ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.red,
              padding: const EdgeInsets.only(left: 160,top: 45),
              child: const Text('Red',style: TextStyle(
                  fontSize: 40,
                  shadows: [
                    Shadow(color: Colors.black,blurRadius: 4)
                  ]
              ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.green,
              padding: const EdgeInsets.only(left: 150,top: 45),
              child: const Text('green',style: TextStyle(
                  fontSize: 40,
                  shadows: [
                    Shadow(color: Colors.black,blurRadius: 4)
                  ]
              ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.purple,
              padding: const EdgeInsets.only(left: 145,top: 45),
              child: const Text('Purple',style: TextStyle(
                  fontSize: 40,
                  shadows: [
                    Shadow(color: Colors.black,blurRadius: 4)
                  ]
              ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.brown,
              padding: const EdgeInsets.only(left: 145,top: 45),
              child: const Text('Brown',style: TextStyle(
                  fontSize: 40,
                  shadows: [
                    Shadow(color: Colors.black,blurRadius: 4)
                  ]
              ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.orange,
              padding: const EdgeInsets.only(left: 140,top: 45),
              child: const Text('Orange',style: TextStyle(
                  fontSize: 40,
                  shadows: [
                    Shadow(color: Colors.black,blurRadius: 4)
                  ]
              ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.lime,
              padding: const EdgeInsets.only(left: 155,top: 45),
              child: const Text('Lime',style: TextStyle(
                  fontSize: 40,
                  shadows: [
                    Shadow(color: Colors.black,blurRadius: 4)
                  ]
              ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.cyan,
              padding: const EdgeInsets.only(left: 155,top: 45),
              child: const Text('Cyan',style: TextStyle(
                  fontSize: 40,
                  shadows: [
                    Shadow(color: Colors.black,blurRadius: 4)
                  ]
              ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.teal,
              padding: const EdgeInsets.only(left: 155,top: 45),
              child: const Text('Teal',style: TextStyle(
                  fontSize: 40,
                  shadows: [
                    Shadow(color: Colors.black,blurRadius: 4)
                  ]
              ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.indigo,
              padding: const EdgeInsets.only(left: 140,top: 45),
              child: const Text('Indigo',style: TextStyle(
                  fontSize: 40,
                  shadows: [
                    Shadow(color: Colors.black,blurRadius: 4)
                  ]
              ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.black26,
              padding: const EdgeInsets.only(left: 125,top: 45),
              child: const Text('Black56',style: TextStyle(
                  fontSize: 40,
                  shadows: [
                    Shadow(color: Colors.black,blurRadius: 4)
                  ]
              ),
              ),
            ),
          ],
        ),
      );
   }
}
