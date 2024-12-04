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
          elevation: 20,
          backgroundColor: Colors.lightBlueAccent,
          titleTextStyle: const TextStyle(color: Colors.black,fontSize: 25),
          toolbarOpacity: 0.9,
          toolbarHeight: 60,
         // titleSpacing: 20,
          actions: [
            IconButton(
                onPressed: () {
                   print('Home Button Pressed');
                },
                icon: const Icon(Icons.home),
                color: Colors.black,
             // iconSize: 30,
            ),
            IconButton(
                onPressed: () {
                   print('Person Button Pressed');
                },
                icon: const Icon(Icons.person)
            )
          ],
          leading: IconButton(
            onPressed: () {
              print('Back Button Pressed');
            },
            icon: const Icon(Icons.arrow_back),
           // iconSize: 25,
          ),
          automaticallyImplyLeading: true,
          centerTitle: false,
          leadingWidth: 25,
          shadowColor: Colors.lightBlue,
          title: const Text('Appbar Practice'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                  height: 100,
                  //color: Colors.grey.shade800,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                    ),
                    width: double.infinity,
                    height: 100,
                    //color: Colors.grey.shade500,

                    child: Center(
                      child: ElevatedButton( // OutlineButton // TextButton
                       onPressed: () {
                         print("Eleveted Button Pressed ");
                       },
                        onLongPress: () {
                          print('Eleveted Button Long Pressed ');
                        },
                       child: const Text('Eleveted Button'),
                     ),
                    ),
                  ),
                ),
              ],
            ),
            const Positioned(
              top: 50,
              left: 50,
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                minRadius: 20,
                maxRadius: 70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
