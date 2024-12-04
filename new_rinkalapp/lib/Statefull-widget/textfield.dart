import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: TextFieldExample(),
    );
  }
}

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

TextEditingController _txtcontroller = TextEditingController();
var _error;

class _TextFieldExampleState extends State<TextFieldExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              TextField(
                style: const TextStyle(
                  fontSize: 22,
                ),
                /// InputDecoration :-
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60)),
                //counterText: 'asd',
                  enabled: true,
                  disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue.shade200)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue.shade900)),
                  errorText: _error,
                  //errorMaxLines: 2,
                  //error: Icon(Icons.error, color: Colors.red,),
                  //fillColor: Colors.blue,
                  //filled: true,
                  labelText: 'Enter your Name',
                  hintText: 'fname mname surname',
                  alignLabelWithHint: true,
                  //floatingLabelAlignment: FloatingLabelAlignment.center,
                  contentPadding: const EdgeInsets.only(left: 60, top: 20, bottom: 20),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  helperText: 'This is a helping Text',
                  icon: const Icon(Icons.access_alarm),
                  prefixIcon: const Icon(Icons.accessible),
                ),
                enabled: true,
                autocorrect: true,
                autofocus: false,
                controller: _txtcontroller,
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                onChanged: (value) {
                  print(value);
                },
                textDirection: TextDirection.ltr,
                maxLines: 1,
              ),
              ElevatedButton(
                  onPressed: () {
                    var txt = _txtcontroller.text;
                    if(txt == '')
                    {
                      setState(() {
                         _error = 'Textbox should not empty';
                      });
                    }
                    else if(txt.length < 6){
                      setState(() {
                        _error = 'Text should not less than 6 char.';
                      });
                    }
                   else{
                      setState(() {
                         _error = null;
                         print(_error);
                      });
                   }
                },
                  child: const Text('Get/Set Data')
              )
            ],
          ),
        ),
      ),
    );
  }
}
