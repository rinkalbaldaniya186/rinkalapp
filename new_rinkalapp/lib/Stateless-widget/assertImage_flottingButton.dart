import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print('add');
          },
          icon: const Icon(Icons.add),
          label: const Text('Add User'),
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          splashColor: Colors.amber,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        //floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        appBar: AppBar(
          title: const Text('AssertImg - FlottingActionButton'),
          backgroundColor: Colors.lightBlue,
          toolbarOpacity: 0.9,
          toolbarHeight: 80,
          centerTitle: true,
          titleTextStyle: const TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          actions: [
            IconButton(
              onPressed: () {
                print('Home');
              },
              icon: const Icon(Icons.home),
              color: Colors.black,
            )
          ],
          leading: IconButton(
            onPressed: () {
              print('Pressed line Button');
            },
            icon: const Icon(Icons.line_weight),
          ),
        ),
        body: Container(
            width: 250,
            height: 150,
            color: Colors.amber,
            child: Image.asset(
              'assets/image/rose-flower.jpg',
              // width: 50,
              // height: 50,
              cacheHeight: 200,
              alignment: Alignment.topCenter,
              color: Colors.black,
              colorBlendMode: BlendMode.color,
              //fit: BoxFit.fitWidth,
              //repeat: ImageRepeat.repeatY,
              scale: 3,
            )),
      ),
    );
  }
}
