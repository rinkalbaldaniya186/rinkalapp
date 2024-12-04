
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: DialougExample(),
    );
  }
}

class DialougExample extends StatefulWidget {
  const DialougExample({super.key});

  @override
  State<DialougExample> createState() => _DialougExampleState();
}

class _DialougExampleState extends State<DialougExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  var Course = await _showSimpleDialoug(context);
                  print('Course');
                },
                child: const Text('Simple Dialog')),
            ElevatedButton(
                onPressed: () async {
                   var ans = await _alertDialoug(context);
                   print(ans);
                }, 
                child: const Text('Alert Dialog')),
            ElevatedButton(
                onPressed: () async {
                  var logIn = await _customDialoug(context);
                  print(logIn);
                }, 
                child: const Text('Custom Dialog')),
            ElevatedButton(
                onPressed: () {
                  _datePicker(context);
                }, 
                child: const Text('datePikker Dialog')
            )
          ],
        ),
      ),
    );
  }

  Future<String> _showSimpleDialoug(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
      return SimpleDialog(
        contentPadding: const EdgeInsets.all(25),
        title: const Text('Our Courses :- ', style: TextStyle(fontSize: 27,color: Colors.black,fontWeight: FontWeight.w700),),
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const FlutterDevPage(),));
              print('Flutter Dev.');
            },
              child: const Text('*  Flutter Development', style: TextStyle(fontSize: 22),)),
          const SizedBox(height: 8,),
          InkWell(
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const GraphicDesPage(),));
               print('Flutter Dev.');
            },
              child: const Text('*  Graphics Designing', style: TextStyle(fontSize: 22),)),
          const SizedBox(height: 8,),
          const Text('*  Web Development', style: TextStyle(fontSize: 22),),
          const SizedBox(height: 8,),
          const Text('*  Digital Markting', style: TextStyle(fontSize: 22),),
          const SizedBox(height: 8,),
          const Text('*  Full Stack Development', style: TextStyle(fontSize: 22),),
          const SizedBox(height: 8,),
          const Text('*  Web Designing', style: TextStyle(fontSize: 22),),
        ],
      );
    },
    );
  }

  Future<String> _alertDialoug(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: const Icon(Icons.battery_alert),
          title: const Text('Alert Dialoug'),
          content: const Text('The AlertDialog class lets you build a variety of dialog designs and is often the only dialog class you need. As shown in the following figure, there are three regions of an alert dialog:'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,'Okay');
              },
              child: const Text('Okay'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancle'),
            )
          ],
        );
      },
    );
  }

  Future<String> _customDialoug(BuildContext context) async {
   return await showDialog(
      context: context, 
      builder:  (context) {
       return Dialog(
         backgroundColor: Colors.white,
           child: Container(
             padding: const EdgeInsets.all(20),
             decoration: const BoxDecoration(
                 image: DecorationImage(
                   image: NetworkImage('https://e0.pxfuel.com/wallpapers/131/377/desktop-wallpaper-bright-gradient-aesthetic-background-for-instagram-stories-beautiful-cover-highlight-pastel-gradient-vector-background-pattern-pink-abstract.jpg'),
                   fit: BoxFit.fill,
                 )
             ),
             child: Column(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Container(
                   height: 50,
                   width: 50,
                   decoration: const BoxDecoration(
                       image: DecorationImage(
                         image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1BSDcM3wqt6RruLVMHksvd9-X6nCl3C4bPg&s'),
                         fit: BoxFit.fill,
                       ),
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                   ),
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 const Text('Instragram',
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 30,
                       fontWeight: FontWeight.w700,
                     )
                 ),
                 const SizedBox(
                   height: 30,
                 ),
                 TextField(
                   decoration:InputDecoration(
                       border: const OutlineInputBorder(
                       ),
                       label: const Text('User Name'),
                       hintText: 'Phone number, username or emailaddress',
                       hintStyle: TextStyle(
                         color: Colors.grey.shade900,
                     ),
                   ),
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 TextField(
                   decoration:InputDecoration(
                     border: const OutlineInputBorder(),
                     label: const Text('Password'),
                     hintText: 'password',
                     hintStyle: TextStyle(
                       color: Colors.grey.shade900
                     ),
                     counterText: 'Forgotten password?',
                     counterStyle: TextStyle(
                       color: Colors.blue.shade900
                     ),
                   ),
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 Container(
                   height: 58,
                   width: 300,
                   color: Colors.lightBlue.shade500,
                   child: TextButton(
                       onPressed: () {

                       },
                       child: const Text('Log In',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 22,
                         ),
                       ),
                   ),
                 ),const SizedBox(
                   height: 20,
                 ),
                 Text('OR',
                   style: TextStyle(
                       color: Colors.grey.shade900,
                       fontWeight: FontWeight.w600,
                   ),
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       height: 20,
                       width: 20,
                       decoration: const BoxDecoration(
                         image: DecorationImage(
                           image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo7FyccXoWmLRVLDSQOY4aOiU6azUqqVkJoA&s'),
                         )
                       ),
                     ),
                     const SizedBox(
                       width: 10,
                     ),
                     Text('Log in with Facebook',
                       style: TextStyle(
                         color: Colors.blue.shade900,
                         fontWeight: FontWeight.w700
                      ),
                     )
                   ],
                 )
               ],
             ),
           ),
       );
     },
    );
  }
  
  Future<DateTime?> _datePicker(BuildContext context) async {
    return await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
      cancelText: 'Cancel',
      confirmText: 'Okay',
      initialDate: DateTime.now(),
      currentDate: DateTime.now(),
      helpText: 'DATE',
      fieldHintText: 'DD/MM/YYYY',
      fieldLabelText: 'Enter Date',
      errorInvalidText: 'Invalid Date',
      errorFormatText: 'Invalid Format',
      selectableDayPredicate: _dayPredict,
    );
  }

  bool _dayPredict(DateTime day) {

    if(day.isAfter(DateTime.now().subtract(const Duration(days: 1)))) {
      return true;
    }
    else {
      return false;
    }
  }
}


class FlutterDevPage extends StatelessWidget {
  const FlutterDevPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Development Course :-',style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20,top: 20),
        child: const Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/C_Programming_Language.svg/1853px-C_Programming_Language.svg.png'),
                  maxRadius: 30,
                ),
                SizedBox(width: 20,),
                Text('C Language', style: TextStyle(fontSize: 25)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGUIwoKUt6OEXHCOyypsnL2tAvVkF6YmkVAYrLKGpV3j4_N5VEhq4A6NTpQAyE7vL7_Wk&usqp=CAU'),
                  maxRadius: 30,
                ),
                SizedBox(width: 20,),
                Text('C++ Language', style: TextStyle(fontSize: 25)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUDQRnc50VfJtYddnRKc2qtgc3a5TWGo0WmQ&s'),
                  maxRadius: 30,
                ),
                SizedBox(width: 20,),
                Text('Dart Language', style: TextStyle(fontSize: 25)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTclHf4c816YNTdJF9klfTbxNb1oEJUYB1RiQ&s'),
                  maxRadius: 30,
                ),
                SizedBox(width: 20,),
                Text('Flutter', style: TextStyle(fontSize: 25)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GraphicDesPage extends StatelessWidget {
  const GraphicDesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Graphic Design Course :-',style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20,top: 20),
        child: const Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Adobe_Photoshop_CC_icon.svg/2101px-Adobe_Photoshop_CC_icon.svg.png'),
                  maxRadius: 30,
                ),
                SizedBox(width: 20,),
                Text('Adobe Photoshop', style: TextStyle(fontSize: 25)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Adobe_Illustrator_CC_icon.svg/2101px-Adobe_Illustrator_CC_icon.svg.png'),
                  maxRadius: 30,
                ),
                SizedBox(width: 20,),
                Text('Adobe Illustrator', style: TextStyle(fontSize: 25)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Adobe_InDesign_CC_icon.svg/1051px-Adobe_InDesign_CC_icon.svg.png'),
                  maxRadius: 30,
                ),
                SizedBox(width: 20,),
                Text('adobe indesign', style: TextStyle(fontSize: 25)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR1Dfk_IX8blV2VBmGH-FVQgXWBAKwqNDutg&s'),
                  maxRadius: 30,
                ),
                SizedBox(width: 20,),
                Text('CorelDRAW', style: TextStyle(fontSize: 25)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMv3YxsaopS0GrjQ_FSIORA3VdcTyIFU6erA&s'),
                  maxRadius: 30,
                ),
                SizedBox(width: 20,),
                Text('Figma', style: TextStyle(fontSize: 25)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}