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
          label: const Text('Add'),

          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 30,
          splashColor: Colors.amber,
          extendedIconLabelSpacing: 10,
          focusElevation: 10,
          extendedTextStyle: const TextStyle(fontSize: 18),
          mouseCursor: MouseCursor.uncontrolled,
          isExtended: true,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          // mini: false,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        appBar: AppBar(
          title: const Text('Prac. AssertImg - FlottingActionButton'),
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
          color: Colors.grey,
          height: 170,
          width: 340,
          child: Image.asset('assets/image/nature.jpg',
            cacheWidth: 250,
            cacheHeight: 200,
            color: Colors.black,
            colorBlendMode: BlendMode.color,
            scale: 1,
            fit: BoxFit.fill,
            alignment: Alignment.center,
            filterQuality: FilterQuality.medium,
            // repeat: ImageRepeat.repeatY,
          ),
        ),
      ),
    );
  }
}