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
          title: const Text('bottom Sheet Example',style: TextStyle(color: Colors.black,fontSize: 27),),
          backgroundColor: Colors.grey.shade300,
        ),
        body: const BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          child: const Text('Open Profile', style: TextStyle(fontSize: 20),),
          onPressed: () {
            Scaffold.of(context).showBottomSheet((context) {
              return Container(
                color: Colors.grey.shade400,
                height: 510,
                width: double.infinity,
                child: Column(
                  children: [
                    // SizedBox(
                    //   width: double.infinity,
                    //   height: 10,
                    // ),
                    SizedBox(
                     // color: Colors.green,
                      height: 120,
                         child: Row(
                           children: [
                             // SizedBox(
                             //   width: 10,
                             //   height: double.infinity,
                             // ),
                             const SizedBox(
                               // height: 130,
                                width: 110,
                               // color: Colors.black,
                               child: CircleAvatar(
                                // backgroundColor: Colors.lightBlue,
                                 backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4tenVwEtB985SOEcSUJrza2ESQqAnzpcRw1Bf3qOS9LWWsFbVJq3WX6Eh319sqrVppF8&usqp=CAU'),
                                // https://png.pngtree.com/png-vector/20231229/ourmid/pngtree-cute-couple-cartoon-character-for-love-valentines-day-concept-png-image_11291309.png
                                 radius: 50,
                               )
                             ),
                             SizedBox(
                               width: 20,
                             ),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Container(
                                   // color: Colors.purple,
                                   // width: 130,
                                   child: const Text('Cartoon_girl123',style: TextStyle(color: Colors.black,fontSize: 20)),
                                 ),
                                 Container(
                                  // color: Colors.purple,
                                  //
                                   child: const Text('@cartoon_girl123gmail.com',style: TextStyle(color: Colors.black,fontSize: 15)),
                                 ),
                               ],
                             )
                           ],
                         ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                     // color: Colors.purple,
                      height: 100,
                      width: double.infinity,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color : Colors.grey.shade200,
                              height: 20,
                              width: 280,
                            ),
                            const SizedBox(
                              width: 10,
                             height: 5,
                            ),
                            Container(
                              color : Colors.grey.shade200,
                              height: 20,
                              width: 220,
                            ),
                            const SizedBox(
                              width: 10,
                              height: 5,
                            ),
                            Container(
                              color : Colors.grey.shade200,
                              height: 20,
                              width: 160,
                            ),
                            const SizedBox(
                              width: 10,
                              height: 5,
                            ),
                            Container(
                              color : Colors.grey.shade200,
                              height: 20,
                              width: 250,
                            )
                          ],
                        ),
                    ),
                    Container(
                      child : Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 130,
                            child: ElevatedButton(
                              onPressed: () {
                                 print('Follow me');
                              },
                              child: const Text('Follow'),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 130,
                            child: ElevatedButton(
                              onPressed: () {
                                print('Massage me');
                              },
                              child: const Text('Massage'),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 100,
                            child: ElevatedButton(
                              onPressed: () {
                                print('Email me');
                              },
                              child: const Text('Email'),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                     // color: Colors.green,
                        height: 120,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 110,
                            width: 125,
                            decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage('https://i.pinimg.com/736x/6b/30/9a/6b309a2ccde102f45ef6c4e5c3f40052.jpg'))),
                          ),
                          Container(
                            height: 110,
                            width: 125,
                            decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage('https://image.winudf.com/v2/image1/Y29tLmxha25haWRyaWFwcHMuZ2lybHNjYXJ0b29uX3NjcmVlbl80XzE2Mjg5NDQxNjBfMDM3/screen-4.webp?fakeurl=1&type=.webp'))),
                          ),
                          Container(
                            height: 110,
                            width: 125,
                            decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrGL9Qo0qUV13th6Ci_-dBSKRPA4DuPjEqUmE9gd2uygqjKmyb5DCoNxgOXLS-RZ1-F2Y&usqp=CAU'))),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                     // color: Colors.green,
                      height: 120,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 110,
                            width: 125,
                            decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRy_2Sip0tkK2Tsm7TmwYs5xP4zTz4_N6BE3EFS5mZfvqh4UpxySijihlPVeNJJ1bKoko&usqp=CAU'))),
                          ),
                          Container(
                            height: 110,
                            width: 125,
                            decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4tenVwEtB985SOEcSUJrza2ESQqAnzpcRw1Bf3qOS9LWWsFbVJq3WX6Eh319sqrVppF8&usqp=CAU'))),
                          ),
                          Container(
                            height: 110,
                            width: 125,
                            decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI6nDK-_URQnP1phrhH1AQqsMYeKMWnn3fnw&usqp=CAU'))),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            });
            },
      ),
    );
  }
}