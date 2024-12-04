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
            titleTextStyle: const TextStyle(color: Colors.black,fontSize: 25 ),
            toolbarOpacity: 0.9,
            toolbarHeight: 50,
            actions: [
              IconButton(onPressed: () {
                print('Home Clicked');
              }, icon: const Icon(Icons.home)),
              IconButton(onPressed: () {
                print('Person Clicked');
              }, icon: const Icon(Icons.person))
            ],
            leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {
              print('Back Button Pressed');
            },),
            automaticallyImplyLeading: true,

            title: const Text('Appbar'),
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
                          color: Colors.grey.shade400,
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                      ),
                      //color: Colors.grey.shade500,
                      height: 100,
                      child: Center(
                        child: OutlinedButton(onPressed: () {
                          print('Eleveted Button Pressed');
                        },
                            onLongPress: () {
                              print('Eleveted Button Long Pressed');
                            },
                            child: const Text('Eleveted Button',style: TextStyle(color: Colors.black,fontSize: 25),),),
                      ),
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
       )
    );
  }
}