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
          backgroundColor: Colors.amber,
          title: const Text('Material App Bar'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  //color: Colors.lightBlue,
                  height: 100,
                  width: double.infinity,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                    ),
                    //color: Colors.grey.shade500,
                    height: 100,
                  ),
                ),
              ],
            ),
           const Positioned(
             top: 40,
             left: 130,
               child:  CircleAvatar(
                 backgroundColor: Colors.amber,
                 backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/256/3135/3135789.png"),
                 minRadius: 20,
                 maxRadius: 70,
               ),
            ),
            const Positioned(
                top: 150,
                left: 230,
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  minRadius: 5,
                  maxRadius: 13,
                ),
             ),
          ],
        )
      ),
    );
  }
}