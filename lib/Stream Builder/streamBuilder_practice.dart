import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: StreamBuilderPractice(),
    );
  }
}

class StreamBuilderPractice extends StatefulWidget {
  const StreamBuilderPractice({super.key});

  @override
  State<StreamBuilderPractice> createState() => _StreamBuilderPracticeState();
}

// var num = 0;
var i;

class _StreamBuilderPracticeState extends State<StreamBuilderPractice> {

  final StreamController<int>  streamController = StreamController<int>();

   int num = 0;

  @override
  void dispose(){
    super.dispose();
    streamController.close();
  }

 //  upCounter(){
 //    setState(() {
 //      num++;
 //    });
 //  }
 // downCounter(){
 //    setState(() {
 //      num--;
 //    });
 // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           StreamBuilder(
             stream: streamController.stream,
             builder: (context, snapshot) {
               if(snapshot.hasData) {
                 return Text('Number : ${snapshot.data.toString()}',style: const TextStyle(color: Colors.black,fontSize: 30),);
               } else {
                 return const CircularProgressIndicator();
               }
             },
           ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
              //  return upCounter();
                  return streamController.sink.add(num++);

                },
                child : const Text('Start',style: TextStyle(color: Colors.black,fontSize: 25),),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
              //  return downCounter();
                  return streamController.sink.add(num--);
                },
                child: const Text('Down',style: TextStyle(color: Colors.black,fontSize: 25),)
            )
          ],
        ),
      ),
    );
  }
}
