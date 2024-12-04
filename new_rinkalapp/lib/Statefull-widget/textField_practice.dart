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

class _TextFieldExampleState extends State<TextFieldExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
            ),
            enabled: true,
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
            disabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.grey.shade400,width: 3)),

            prefixIcon: const Icon(Icons.drive_file_rename_outline),
            prefixIconColor: Colors.black,
            icon: const Icon(Icons.bookmark_added_outlined),
            iconColor: Colors.black54,
            prefixText: '+91 ',
            prefixStyle: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.w500,fontSize: 20),

            suffixText: 'Show',
            suffixIcon: const Icon(Icons.remove_red_eye),
            suffixIconColor: Colors.grey.shade600,

            helperText: 'Add Your Full Name',
            helperMaxLines: 2,
            helperStyle: const TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.w500,),

            counterText: '1 to 100',
            counterStyle: TextStyle(color: Colors.blue.shade900),

            hintText: 'surname yourName fatherName',
            hintFadeDuration: const Duration(seconds: 01),
            hintMaxLines: 1,
            hintStyle: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey.shade600),
            hintTextDirection: TextDirection.ltr,
         // hoverColor: Colors.redAccent,

            // errorText: 'please Enter Your Full Name',
            // errorStyle: TextStyle(color: Colors.red,fontStyle: FontStyle.normal,fontWeight: FontWeight.w500),
            // errorMaxLines: 2,
            // errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),

            focusColor: Colors.redAccent,
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue.shade900,width: 2),borderRadius: BorderRadius.circular(40)),
            constraints: const BoxConstraints(maxHeight: 100,maxWidth: 370),
            contentPadding: const EdgeInsets.all(20),

            labelText: 'Enter Your Name',
            floatingLabelStyle: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.w700),
            alignLabelWithHint: true,
            floatingLabelAlignment: FloatingLabelAlignment.start,
            floatingLabelBehavior: FloatingLabelBehavior.auto,

            filled: true,
            fillColor: Colors.grey.shade300,

          ),
          autocorrect: true,
          autofocus: false,
          keyboardAppearance: Brightness.dark,
          keyboardType: TextInputType.emailAddress,
          obscureText: false, // hide text
          textDirection: TextDirection.ltr,
          maxLines: 1,
          cursorColor: Colors.black,
          cursorHeight: 25,
          enabled: true,
          enableSuggestions: false,
          showCursor: true,
          readOnly: false,
        ),
      ),
    );
  }
}