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
          backgroundColor: Colors.blueAccent.shade100,
          title: const Text('Top Grid View',style: TextStyle(fontSize: 27),),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                   // color: Colors.brown,
                    height: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.green,
                          height: 170,
                          width: 170,
                        ),
                        Container(
                          color: Colors.deepOrangeAccent,
                          height: 170,
                          width: 170,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    //color: Colors.blueGrey,
                    height: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                              color: Colors.lightBlue,
                              height: 100,
                              width: 200,
                            ),
                        SizedBox(
                         // color: Colors.purple,
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                // color: Colors.lightGreenAccent,
                                height: 240,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      color: Colors.amber,
                                      height: 135,
                                      width: 95,
                                    ),
                                    Container(
                                      color: Colors.red,
                                      height: 95,
                                      width: 95,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                // color: Colors.lightGreen,
                                height: 240,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      color: Colors.brown,
                                      height: 95,
                                      width: 95,
                                    ),
                                    Container(
                                      color: Colors.blue,
                                      height: 135,
                                      width: 95,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),                                          
                  )
                  ],
              ),
              SizedBox(
              // color: Colors.blueGrey,
               height: 100,
               child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Container(
                     color: Colors.pink,
                     height: 80,
                     width: 280,
                   ),
                   Container(
                     color: Colors.purple,
                     height: 80,
                     width: 80,
                   )
                 ],
               ),
             ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.lightBlueAccent,
                      height: 80,
                      width: 375,
                    )
                  ],
              ),
            ],
          )
        ),
      ),
    );
  }
}
