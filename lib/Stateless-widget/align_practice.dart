import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Align Practice',style: TextStyle(color: Colors.black,fontSize: 30),),
          backgroundColor: Colors.lightBlueAccent.shade100,
        ),
        body: Center(
          // child: Container(
          //   color: Colors.amber,
          //   height: 100,
          //   width: 100,
          //   child: AspectRatio(
          //     aspectRatio: 4/3,
          //     child: Container(
          //       color: Colors.lightBlueAccent,
          //       height: 50,
          //       width: 100,
          //     ),
          //   ),
          // ),
            child : Container(
              color: Colors.amber,
              height: 300,
              width: 350,
              child: const AspectRatio(
               // aspectRatio: 16 / 9, //aspect ratio for Image
                aspectRatio: 4 / 3,
                child: Image(
                  image: AssetImage('assets/image/rose-flower.jpg'),
                //  fit: BoxFit.fitHeight, //fill type of image inside aspectRatio
                ),
              ),
            )
        ),
      ),
    );
  }
}