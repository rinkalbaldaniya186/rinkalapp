import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: TextFormFieldExample(),
    );
  }
}

class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            const Text('User Login', style: TextStyle(fontSize: 18)),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'User Name',
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if(value==null || value=='')
                      {
                        return 'User name field should not Emply';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Name',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Password',
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if(value==null || value=='')
                      {
                        return 'Password field Should not Null';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Password',
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate())
                        {
                            print('Form Submitted successfully');
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                        }
                        else{
                           print('Error submitting Form');
                        }
                    },
                      child: const Text('Submit')
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Welcome to App Home', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
