import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              //image: Image.network("https://en.wikipedia.org/wiki/File:Nature_celebrating_India.png"),
                image: DecorationImage(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Nature_celebrating_India.png/800px-Nature_celebrating_India.png')),
            ),


          //  decoration: BoxDecoration(
          //               color: Colors.lightBlue,
          //               borderRadius: BorderRadius.circular(25),
          //               border: Border.all(color: Colors.black, width: 1, strokeAlign: BorderSide.strokeAlignOutside),
          //               boxShadow: const [
          //                 BoxShadow(color: Colors.red, blurRadius: 10, offset: Offset(3, 3)),
          //                 BoxShadow(color: Colors.black, blurRadius: 5, offset: Offset(5, 5)),
          //               ],
          //               gradient: LinearGradient(colors: [Colors.red, Colors.yellow])

          width: 300,
          height: 100,
          child: const Text('Angel Multimedia Institute'),

          //color : Colors.cyan,
        ),
      ),
    ),
    );
  }
}
