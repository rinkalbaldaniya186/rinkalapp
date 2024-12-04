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
// List<image> imageList = [
//   image('https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg?size=626&ext=jpg&ga=GA1.1.672697106.1717372800&semt=sph'),
//   image('https://img.freepik.com/premium-photo/bright-green-meadow-with-grass_124507-13850.jpg'),
//   image('https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-118143566.jpg'),
//   image('https://res.cloudinary.com/jerrick/image/upload/v1707195361/65c1bbe184fa66001d1faa64.jpg')
// ];



class _StreamBuilderExampleState extends State<StreamBuilderExample> {

  final imgStream = StreamController<image>();

  final List<Image> imageList = [
    Image.asset(
      'assets/images/resort_1.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/resort_2.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/resort_3.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/resort_4.jpg',
      fit: BoxFit.cover,
    ),
  ];

  @override
  void dispose() {
    imgStream.close();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: StreamBuilder(
        stream: imgStream.stream,
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

class image {
  var pic;

  image(this.pic);
}