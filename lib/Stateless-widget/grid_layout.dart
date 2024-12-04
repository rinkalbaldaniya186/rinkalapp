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
          backgroundColor: Colors.lightBlueAccent.shade100,
          title: const Text('Grid Layout',style: TextStyle(color: Colors.black,fontSize: 30),),
        ),
        body: Container(
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.redAccent,
                    width: 110,
                    height: 55,
                  ),
                  Container(
                    color: Colors.deepOrangeAccent,
                    width: 110,
                    height: 55,
                  ),
                  Container(
                    color: Colors.red,
                    width: 110,
                    height: 55,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.green,
                    width: 110,
                    height: 110,
                  ),
                  Container(
                    color: Colors.lightGreenAccent,
                    width: 110,
                    height: 110,
                  ),
                  Container(
                    color: Colors.lightGreen,
                    width: 110,
                    height: 110,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                   // color: Colors.green,
                    height: 230,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.lightBlue,
                          width: 110,
                          height: 110,
                        ),

                        Container(
                          color: Colors.blue,
                          width: 110,
                          height: 110,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.lightBlueAccent,
                    width: 230,
                    height: 230,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.green,
                    width: 110,
                    height: 110,
                  ),
                  Container(
                    color: Colors.lightGreenAccent,
                    width: 110,
                    height: 110,
                  ),
                  Container(
                    color: Colors.lightGreen,
                    width: 110,
                    height: 110,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.redAccent,
                    width: 110,
                    height: 55,
                  ),
                  Container(
                    color: Colors.deepOrangeAccent,
                    width: 110,
                    height: 55,
                  ),
                  Container(
                    color: Colors.red,
                    width: 110,
                    height: 55,
                  )
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}