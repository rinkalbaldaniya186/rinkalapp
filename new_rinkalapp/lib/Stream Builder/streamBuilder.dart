import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: StreamBuilderExample(),
    );
  }
}


class StreamBuilderExample extends StatefulWidget {
  const StreamBuilderExample({Key? key}) : super(key: key);

  @override
  State<StreamBuilderExample> createState() => _StreamBuilderExampleState();
}

int num = 0;
late int i;

class _StreamBuilderExampleState extends State<StreamBuilderExample> {

  final Stream _bids = (() {
    late final StreamController<int> controller;
    controller = StreamController<int>(
      onListen: () async {
        for(i=0;i<=10;i++)
        {
          await Future<void>.delayed(const Duration(seconds: 1));
          num++;
          controller.add(num);
          if(num==10) {
            controller.close();
          }
        }

      },
    );
    return controller.stream;
  })();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: StreamBuilder(
        stream:_bids,
        builder: (context, snapshot) {
          if(!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator(),);
          } else if(snapshot.hasData)
            return Center(child: Text(snapshot.data.toString()));
          else if(snapshot.connectionState == ConnectionState.done)
            return const Icon(Icons.done_outline_sharp);
          else
            return Text(snapshot.error.toString());
        },
      ),
    );
  }
}