import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: signUpExample(),
    );
  }
}

class signUpExample extends StatefulWidget {
  const signUpExample({super.key});

  @override
  State<signUpExample> createState() => _signUpExampleState();
}

var _error1,_error2,_error3,_error4,_error5;
TextEditingController _txtcontroller1 =  TextEditingController();
TextEditingController _txtcontroller2 =  TextEditingController();
TextEditingController _txtcontroller3 =  TextEditingController();
TextEditingController _txtcontroller4 =  TextEditingController();
TextEditingController _txtcontroller5 =  TextEditingController();
var _obscuretxt4 = true;
var _obscuretxt5 = true;

class _signUpExampleState extends State<signUpExample> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   title: Text('Material App Bar'),
      // ),
      body: Center(
        child: Container(
          width: double.infinity,
          //color: Colors.purple.shade50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://content.wepik.com/statics/326856066/preview-page3.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      //color: Colors.pink,
                      height: 40,
                      child: Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      child: const Text('Create your account',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5,left: 30,right: 30),
                      child: Column(
                        children: [
                          TextField(
                            style: const TextStyle(
                              fontSize: 15,
                              height: 1.5
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(color: Colors.black)
                              ),
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(color: Colors.black)
                              ),
                              labelText: 'First Name',
                              labelStyle: const TextStyle(color: Colors.grey,fontSize: 20),
                              floatingLabelAlignment: FloatingLabelAlignment.start,
                              floatingLabelStyle: const TextStyle(color: Colors.black87),
                              prefixIcon: const Icon(Icons.person),
                              contentPadding: const EdgeInsets.all(20),
                              filled: true,
                              fillColor: Colors.deepPurple.shade50,
                              errorText : _error1,
                              errorStyle: const TextStyle(color: Colors.red),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(color: Colors.red)
                              ),
                              suffixText: '~ 5 to 30',
                            ),
                         // style: TextStyle(color: Colors.black,fontSize: 20),
                            controller: _txtcontroller1,
                          )
                        ],
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5,left: 30,right: 30),
                    child: Column(
                      children: [
                        TextField(
                          style: const TextStyle(
                              fontSize: 15,
                              height: 1.5
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: Colors.black)
                            ),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: Colors.black)
                            ),
                            labelText: 'Last Name',
                            labelStyle: const TextStyle(color: Colors.grey,fontSize: 20),
                            floatingLabelAlignment: FloatingLabelAlignment.start,
                            floatingLabelStyle: const TextStyle(color: Colors.black87),
                            prefixIcon: const Icon(Icons.person),
                            contentPadding: const EdgeInsets.all(20),
                            filled: true,
                            fillColor: Colors.deepPurple.shade50,
                            errorText : _error2,
                            errorStyle: const TextStyle(color: Colors.red),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: Colors.red)
                            ),
                           suffixText: '~ 5 to 30',
                          ),
                          // style: TextStyle(color: Colors.black,fontSize: 20),
                          controller: _txtcontroller2,
                        )
                      ],
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5,left: 30,right: 30),
                    child: Column(
                      children: [
                        TextField(
                          style: const TextStyle(
                              fontSize: 15,
                              height: 1.5
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: Colors.black)
                            ),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: Colors.black)
                            ),
                            labelText: 'Email',
                            labelStyle: const TextStyle(color: Colors.grey,fontSize: 20),
                            floatingLabelAlignment: FloatingLabelAlignment.start,
                            floatingLabelStyle: const TextStyle(color: Colors.black87),
                            prefixIcon: const Icon(Icons.email),
                            contentPadding: const EdgeInsets.all(20),
                            filled: true,
                            fillColor: Colors.deepPurple.shade50,
                            errorText : _error3,
                            errorStyle: const TextStyle(color: Colors.red),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: Colors.red)
                            ),
                          ),
                          // style: TextStyle(color: Colors.black,fontSize: 20),
                          controller: _txtcontroller3,
                        )
                      ],
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5,left: 30,right: 30),
                    child: Column(
                      children: [
                        TextField(
                          style: const TextStyle(
                              fontSize: 15,
                              height: 1.5
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: Colors.black)
                            ),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: Colors.black)
                            ),
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: Colors.grey,fontSize: 20),
                            floatingLabelAlignment: FloatingLabelAlignment.start,
                            floatingLabelStyle: const TextStyle(color: Colors.black87),
                            prefixIcon: const Icon(Icons.password),
                            contentPadding: const EdgeInsets.all(20),
                            filled: true,
                            fillColor: Colors.deepPurple.shade50,
                            errorText : _error4,
                            errorStyle: const TextStyle(color: Colors.red),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: Colors.red)
                            ),
                            suffix: IconButton(
                               icon:
                               const Icon(Icons.remove_red_eye),
                               onPressed: () {
                                 if(_obscuretxt4 == true){
                                   setState(() {
                                     _obscuretxt4 = false;
                                   });
                                 }
                                 else{
                                   setState(() {
                                     _obscuretxt4 = true;
                                   });
                                 }
                               },
                            )
                          ),
                          obscureText: _obscuretxt4,
                          // style: TextStyle(color: Colors.black,fontSize: 20),
                          controller: _txtcontroller4,
                        )
                      ],
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5,left: 30,right: 30),
                    child: Column(
                      children: [
                        TextField(
                          style: const TextStyle(
                              fontSize: 15,
                              height: 1,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: Colors.black)
                            ),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: Colors.black)
                            ),
                            labelText: 'Confirm Password',
                            labelStyle: const TextStyle(color: Colors.grey,fontSize: 20),
                            floatingLabelAlignment: FloatingLabelAlignment.start,
                            floatingLabelStyle: const TextStyle(color: Colors.black87),
                            prefixIcon: const Icon(Icons.password_outlined),
                            contentPadding: const EdgeInsets.all(20),
                            filled: true,
                            fillColor: Colors.deepPurple.shade50,
                            errorText : _error5,
                            errorStyle: const TextStyle(color: Colors.red),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: Colors.red)
                            ),
                            suffix: IconButton(
                              icon: const Icon(Icons.remove_red_eye),
                              onPressed: () {
                                if(_obscuretxt5 == true){
                                  setState(() {
                                    _obscuretxt5 = false;
                                  });
                                }
                                else{
                                  setState(() {
                                    _obscuretxt5 = true;
                                  });
                                }
                              },
                            ),
                          ),
                          obscureText: _obscuretxt5,
                          // style: TextStyle(color: Colors.black,fontSize: 20),
                          controller: _txtcontroller5,
                        )
                      ],
                    ),
                ),
                Container(
                 // color: Colors.lightBlue,
                 //  height: 50,
                 //  width: 320,
                 //  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),border: Border.all(color: Colors.black)),
                  child: ElevatedButton(
                      onPressed:
                      () {
                        var er = 0;
                        if(_txtcontroller1.text == ''){
                          setState(() {
                            er++;
                            _error1 = 'Please Enter Your First Name';
                          });
                        }
                        if(!RegExp(r"^[A-Z][A-Za-z0-9_]{4,31}$").hasMatch(_txtcontroller1.text)){
                          setState(() {
                            er++;
                            _error1 = 'First Name is not Valid';
                          });
                        }

                        if(_txtcontroller2.text == ''){
                          setState(() {
                            er++;
                            _error2 = 'Please Enter Your Last Name';
                          });
                        }
                        if(!RegExp(r"^[A-Z][A-Za-z0-9_]{4,31}$").hasMatch(_txtcontroller2.text)){
                          setState(() {
                            er++;
                            _error2 = 'Last Name is not Valid';
                          });
                        }

                        if(_txtcontroller3.text == ''){
                          setState(() {
                            er++;
                            _error3 = 'Please Enter Your Email Address';
                          });
                        }
                        if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(_txtcontroller3.text)){
                          // (?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$
                          // /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$/
                          setState(() {
                            er++;
                            _error3 = 'Email is not in valid format';
                          });
                        }

                        if(_txtcontroller4.text == ''){
                          setState(() {
                            er++;
                            _error4 = 'Please Enter Your Password';
                          });
                        }
                        if(!RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$").hasMatch(_txtcontroller4.text)){
                         // (?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$
                         // /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$/
                          setState(() {
                            er++;
                            _error4 = 'Password is not valid';
                          });
                        }
                        // if(_txtcontroller4.text.length>=10 && !_txtcontroller4.text.contains(RegExp(r'\W')) && RegExp(r'\d+\w*\d+').hasMatch(_txtcontroller4.text))
                        // {
                        //   print(" \n\tpassword is Valid Password");
                        // }

                        if(_txtcontroller5.text == ''){
                          setState(() {
                            er++;
                            _error5 = 'Please Enter Your Confirm Password';
                          });
                        }
                        if(!RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$").hasMatch(_txtcontroller5.text)){
                          setState(() {
                            er++;
                            _error5 = 'Confirm password is not valid';
                          });
                        }

                        // if(_txtcontroller5.text.length>=10 && !_txtcontroller5.text.contains(RegExp(r'\W')) && RegExp(r'\d+\w*\d+').hasMatch(_txtcontroller5.text))
                        // {
                        //   print(" \n\tpassword is Valid Password");
                        // }

                        if(_txtcontroller4.text != _txtcontroller5.text || _txtcontroller4.text != _txtcontroller5.text){
                          setState(() {
                            er++;
                            _error5 = 'Please Enter Password and Confirm Password are Same';
                            _error4 = 'Please Enter Password and Confirm Password are Same';
                          });
                        }
                        if(er==0)
                          {
                            setState(() {
                              _error1 = _error2 = _error3 = _error4 = _error5 = null;
                            });
                          }
                        // /^[a-zA-Z]+ [a-zA-Z]+$/
                        // r"^[a-zA-Z]+$"
                        //  r"^\s*([A-Za-z]{3,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$"
                        //  '!@#<>?":_``~;[]\|=-+)(*&^%1234567890'
                        //  RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]')
                        // '^(?!.(.)\1{2}) ((?=.[a-z])(?=.[A-Z])(?=.[0-9])|(?=.[a-z])(?=.[A-Z])(?=.[^a-zA-Z0-9])|(?=.[A-Z])(?=.[0-9])(?=.[^a-zA-Z0-9])|(?=.[a-z])(?=.[0-9])(?=.*[^a-zA-Z0-9])).{10,127}$' // password
                        // !RegExp(r"'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$") // password
                      },
                      child: const Text('Sign up')
                  ),
                ),
                const Column(
                  children: [
                    Text('or')
                  ],
                ),
                ElevatedButton(
                    onPressed:
                        () {
                      // if(_txtcontroller1.text == '' || _txtcontroller1.text == null){
                      //   setState(() {
                      //     _error1 = 'Please Enter Your First Name';
                      //   });
                      // }
                      // if(_txtcontroller2.text == '' || _txtcontroller2.text == null){
                      //   setState(() {
                      //     _error2 = 'Please Enter Your Last Name';
                      //   });
                      // }
                      // if(_txtcontroller3.text == '' || _txtcontroller3.text == null){
                      //   setState(() {
                      //     _error3 = 'Please Enter Your Email Address';
                      //   });
                      // }
                      // if(_txtcontroller4.text == '' || _txtcontroller4.text == null){
                      //   setState(() {
                      //     _error4 = 'Please Enter Your Password';
                      //   });
                      // }
                      // if(_txtcontroller5.text == '' || _txtcontroller5.text == null){
                      //   setState(() {
                      //     _error5 = 'Please Enter Your Confirm Password';
                      //   });
                      // }
                      // if(_txtcontroller4.text != _txtcontroller5.text || _txtcontroller4.text != _txtcontroller5.text){
                      //   setState(() {
                      //     _error5 = 'Please Enter Password and Confirm Password are Same';
                      //   });
                      // }
                    },
                    child: const Text('Sign in With Google'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Text('Already have an account? '),
                    ),
                    Container(
                      child: Text(' Login',style: TextStyle(color: Colors.blue.shade900),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// if(_fromkey.currentState!.validate()){
//    aa aapva thi validator ma aapeli error show thase
// }