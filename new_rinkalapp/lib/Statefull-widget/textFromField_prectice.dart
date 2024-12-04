import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: TextFromFieldExample(),
    );
  }
}

SnackBar snackBar = const SnackBar(
  content: Text('Your From Submitted Sucessfully !!!'),
  behavior: SnackBarBehavior.floating,
  showCloseIcon: true,
  width: 350,
);

class TextFromFieldExample extends StatefulWidget {
  const TextFromFieldExample({super.key});

  @override
  State<TextFromFieldExample> createState() => _TextFromFieldExampleState();
}

class _TextFromFieldExampleState extends State<TextFromFieldExample> {

  final _fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Material App Bar'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
         child: SingleChildScrollView(
           child: Column(
             children: [
               const Text('User Login',style: TextStyle(fontSize: 20),),
               Form(
                   key: _fromkey,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       const SizedBox(
                         height: 10,
                       ),
                       const Text('User First Name'),
                       const SizedBox(
                         height: 10,
                       ),
                       TextFormField(
                         validator: (value) {
                           if(value == null || value == ''){
                             return 'User First Name Field Should Not Empty';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5)
                           ),
                           hintText: 'Enter First Name'
                         ),
                       ),
                       const SizedBox(
                         height: 20,
                       ),
                       const Text('User Last Name'),
                       const SizedBox(
                         height: 10,
                       ),
                       TextFormField(
                         validator: (value) {
                           if(value == null || value == ''){
                             return 'User Last Name Field Should Not Empty';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                             border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(5)
                             ),
                             hintText: 'Enter Last Name'
                         ),
                       ),
                       const SizedBox(
                         height: 20,
                       ),
                       const Text('User Password'),
                       const SizedBox(
                         height: 10,
                       ),
                       TextFormField(
                         validator: (value) {
                           if(value == null || value == ''){
                             return 'password Field Should Not Empty';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5)
                           ),
                           hintText: 'Enter Password'
                         ),
                       ),
                       const SizedBox(
                         height: 20,
                       ),
                       ElevatedButton(
                           onPressed: () {
                             if(_fromkey.currentState!.validate()){
                               print('From Submitted Successfully !!!');
                               ScaffoldMessenger.of(context).showSnackBar(snackBar);
                               Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                             }
                             else{
                               print('Error Submitting From');
                             }
                           },
                           child: const Text('Submit')
                       )
                     ],
                   )
               )
             ],
                   ),
         ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('  Welcome !!!  To\nApp Home Screen',
          style: TextStyle(
              fontSize: 40,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              shadows: [
                 Shadow(color: Colors.blue,blurRadius: 5),
                 Shadow(color: Colors.lightBlue)
              ]
          ),
        ),
      )
    );
  }
}