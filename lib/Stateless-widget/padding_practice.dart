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
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(left: 6),
                    padding: const EdgeInsets.only(left: 12,top: 30),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          // spreadRadius: 5,
                          blurRadius: 15,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: const Text(
                      "text 1",
                      style: TextStyle(fontSize: 30),

                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.only(left: 12,top: 30),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                          offset: Offset(0, 10)
                        )
                      ]
                    ),
                    child: const Text('Text 2', style: TextStyle(fontSize: 30),),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.yellow,
                    margin: const EdgeInsets.only(left: 10,right: 6),
                    padding: const EdgeInsets.only(left: 12,top: 30),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(color: Colors.black,width: 3),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0,10),
                        )
                      ]
                    ),
                    child: const Text('Text 3',style: TextStyle(fontSize: 30),),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 13,left: 6),
                    padding: const EdgeInsets.only(left: 12,top: 30),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          // spreadRadius: 5,
                          blurRadius: 15,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: const Text(
                      "text 4",
                      style: TextStyle(fontSize: 30),

                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 13,left: 10),
                    padding: const EdgeInsets.only(left: 12,top: 30),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(width: 3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15,
                              offset: Offset(0, 10)
                          )
                        ]
                    ),
                    child: const Text('Text 5', style: TextStyle(fontSize: 30),),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.yellow,
                    margin: const EdgeInsets.only(top: 13,left: 10,right: 6),
                    padding: const EdgeInsets.only(left: 12,top: 30),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(color: Colors.black,width: 3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0,10),
                          )
                        ]
                    ),
                    child: const Text('Text 6',style: TextStyle(fontSize: 30),),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 13,left: 6),
                    padding: const EdgeInsets.only(left: 12,top: 30),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          // spreadRadius: 5,
                          blurRadius: 15,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: const Text(
                      "text 7",
                      style: TextStyle(fontSize: 30),

                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 13,left: 10),
                    padding: const EdgeInsets.only(left: 12,top: 30),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(width: 3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15,
                              offset: Offset(0, 10)
                          )
                        ]
                    ),
                    child: const Text('Text 8', style: TextStyle(fontSize: 30),),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.yellow,
                    margin: const EdgeInsets.only(top: 13,left: 10,right: 6),
                    padding: const EdgeInsets.only(left: 12,top: 30),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(color: Colors.black,width: 3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0,10),
                          )
                        ]
                    ),
                    child: const Text('Text 9',style: TextStyle(fontSize: 30),),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 13,left: 6),
                    padding: const EdgeInsets.only(left: 12,top: 30),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          // spreadRadius: 5,
                          blurRadius: 15,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: const Text(
                      "text 10",
                      style: TextStyle(fontSize: 30),

                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 13,left: 10),
                    padding: const EdgeInsets.only(left: 10,top: 30),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(width: 3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15,
                              offset: Offset(0, 10)
                          )
                        ]
                    ),
                    child: const Text('Text 11', style: TextStyle(fontSize: 30),),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.yellow,
                    margin: const EdgeInsets.only(top: 13,left: 10,right: 6),
                    padding: const EdgeInsets.only(left: 8,top: 30),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(color: Colors.black,width: 3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0,10),
                          )
                        ]
                    ),
                    child: const Text('Text 12',style: TextStyle(fontSize: 30),),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 13,left: 6),
                    padding: const EdgeInsets.only(left: 10,top: 30),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          // spreadRadius: 5,
                          blurRadius: 15,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: const Text(
                      "text 13",
                      style: TextStyle(fontSize: 30),

                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 13,left: 10),
                    padding: const EdgeInsets.only(left: 8,top: 30),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(width: 3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15,
                              offset: Offset(0, 10)
                          )
                        ]
                    ),
                    child: const Text('Text 14', style: TextStyle(fontSize: 30),),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    // color: Colors.yellow,
                    margin: const EdgeInsets.only(top: 13,left: 10,right: 6),
                    padding: const EdgeInsets.only(left: 8,top: 30),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(color: Colors.black,width: 3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0,10),
                          )
                        ]
                    ),
                    child: const Text('Text 15',style: TextStyle(fontSize: 30),),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}