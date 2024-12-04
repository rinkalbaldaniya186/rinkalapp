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
          title: const Text('bottom sheet Practice 1',style: TextStyle(color: Colors.black,fontSize: 30),),
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
        child: const Text('Click'),
        onPressed: () {
          Scaffold.of(context).showBottomSheet((context) {
             return Container(
               color: Colors.amber,
               height: 200,
               width: double.infinity,
               child: Center(
                 child: Column(
                   children: [
                     Container(
                        color: Colors.lightBlueAccent,
                        height: 50,
                        width: double.infinity,
                        child: Center(
                           child: ElevatedButton(
                             child: const Text('Exit'),
                                onPressed: () {
                                    Navigator.pop(context);
                                 },
                               ),
                             ),
                           ),
                     ElevatedButton(
                         onPressed: () {
                            Navigator.pop(context);
                         },
                         child: const Text('Close')
                     )
                   ],
                 ),
               ),
             );
           });
        },
      ),
    );
  }
}

