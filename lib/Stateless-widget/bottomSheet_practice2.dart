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
          title: const Text('Bottom Sheet Example',style: TextStyle(color: Colors.black,fontSize: 27),),
          backgroundColor: Colors.lightBlueAccent.shade100,
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
        child: const Text('Open Bottom Sheet', style: TextStyle(fontSize: 20),),
        onPressed: () {
          Scaffold.of(context).showBottomSheet((context) {
            return Container(
              color: Colors.black,
              height: 315,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                      color: Colors.lightBlueAccent,
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            // color: Colors.white,
                            width: 50,
                            child:
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                                print('Photo');
                              },
                              icon: const Icon(Icons.photo),
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            child: const Text('Photo',style: TextStyle(color: Colors.black,fontSize: 20)),
                          ),
                        ],
                      )
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 1,
                  ),
                  Container(
                    color: Colors.lightBlueAccent,
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                         // color: Colors.white,
                          width: 50,
                          child:
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  print('Music');
                                 },
                                icon: const Icon(Icons.music_note),
                                color: Colors.black,
                            ),
                        ),
                        Container(
                          child: const Text('Music',style: TextStyle(color: Colors.black,fontSize: 20)),
                        )
                      ],
                    )
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 1,
                  ),
                  Container(
                      color: Colors.lightBlueAccent,
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 50,
                            child:
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                                print('Video');
                              },
                              icon: const Icon(Icons.video_library),
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            child: const Text('Video',style: TextStyle(color: Colors.black,fontSize: 20)),
                          )
                        ],
                      )
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 1,
                  ),
                  Container(
                      color: Colors.lightBlueAccent,
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            // color: Colors.white,
                            width: 50,
                            child:
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                                print('Favorite');
                              },
                              icon: const Icon(Icons.favorite),
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            child: const Text('Favorite',style: TextStyle(color: Colors.black,fontSize: 20)),
                          )
                        ],
                      )
                    ),
                  const SizedBox(
                    width: double.infinity,
                    height: 1,
                  ),
                  Container(
                    color: Colors.lightBlueAccent,
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: () {
                                 Navigator.pop(context);
                                 print('Share');
                              },
                              icon: const Icon(Icons.share),
                              color: Colors.black,
                          ),
                        ),
                        Container(
                          child: const Text('Share',style: TextStyle(color: Colors.black,fontSize: 20)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 1,
                  ),
                  Container(
                      color: Colors.lightBlueAccent,
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            // color: Colors.white,
                            width: 50,
                            child:
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                                print('Exit');
                              },
                              icon: const Icon(Icons.exit_to_app),
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            child: const Text('Exit',style: TextStyle(color: Colors.black,fontSize: 20)),
                          )
                        ],
                      )
                  ),
                ],
              )
            );
          });
        },
      ),
    );
  }
}