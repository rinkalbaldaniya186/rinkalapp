import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: LoginPageExample(),
    );
  }
}

class LoginPageExample extends StatefulWidget {
  const LoginPageExample({super.key});

  @override
  State<LoginPageExample> createState() => _LoginPageExampleState();
}

var _obscuretxt = true;
var _error1,_er;

class _LoginPageExampleState extends State<LoginPageExample> {

  final _fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Material App Bar'),
        // ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 25,left: 25),
              color: Colors.pink.shade50,
                  // decoration: const BoxDecoration(
                  //   image: DecorationImage(
                  //     fit: BoxFit.fitHeight,
                  //     image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyZphr6DSGAx392GuouteoFq6oYDBXhtQrfw&s'),
                  //   ),
                  // ),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Form(
                    child: Column(
                      key: _fromkey,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const CircleAvatar(
                          backgroundImage: NetworkImage('https://img.freepik.com/free-photo/view-delicious-burgers-with-buns-cheese_23-2150887893.jpg'),
                          // https://img.freepik.com/premium-photo/beef-burger-photography-side-view-white-background_124185-5035.jpg
                          maxRadius: 125,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        const Text('Login Now',style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.w700),),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Please enter the details below to continue',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w400),),
                        const SizedBox(
                          height: 60,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.black,width: 2),
                            ),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.black,width: 4),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.grey,width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.black,width: 4),
                            ),
                            labelText: 'Email Address',
                            labelStyle: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),
                            floatingLabelStyle: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),
                            floatingLabelAlignment: FloatingLabelAlignment.start,
                            hintText: 'Enter email address',
                            hintStyle: TextStyle(color: Colors.grey.shade900,fontSize: 20,fontWeight: FontWeight.w400),
                            errorStyle: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w400),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red,width: 2),
                            ),
                            contentPadding: EdgeInsets.all(20),
                            prefixIcon: Icon(Icons.email),
                          ),
                            // filled: true,
                            // fillColor: Colors.grey.shade400,
                          validator: (value) {
                            if(value == null || value == ''){
                              return 'Please enter an email address';
                            }
                            else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                              // else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value))
                              return 'Please enter a valid email address';
                            }
                            else{
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.black,width: 2),
                            ),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.black,width: 4),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.grey,width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.black,width: 4),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),
                            floatingLabelStyle: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),
                            floatingLabelAlignment: FloatingLabelAlignment.start,
                            hintText: 'Enter password',
                            hintStyle: TextStyle(color: Colors.grey.shade900,fontSize: 20,fontWeight: FontWeight.w400),
                            errorStyle: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w400),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red,width: 2),
                            ),
                            contentPadding: EdgeInsets.all(20),
                            prefixIcon: Icon(Icons.password),
                          ),
                          obscureText: _obscuretxt,
                          // validator: (value) {
                          //   if(value == null || value == ''){
                          //     return 'Please Enter password';
                          //   }
                          //   else if(!RegExp(r"^(?=.[a-z])(?=.[A-Z])(?=.\d)(?=.[@$!%?&])[A-Za-z\d@$!%?&]{8,}$").hasMatch(value!)){
                          //     return 'Please Enter password in valid formate';
                          //   }
                          //   else{
                          //     return null;
                          //   }
                          // },
                        ),
                        const SizedBox(
                          height: 72,
                        ),
                        Container(
                          // color: Colors.lightBlue,
                          height: 55 ,
                          width: 350,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.grey )),
                          child: ElevatedButton(
                              onPressed: () {
                                if(_fromkey.currentState!.validate()){
                                  print('Login Sucessfully');
                                }
                                else{
                                  print('Try again for register');
                                }
                              },
                              child: const Text('Log In')
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account! ",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
                            Text("Register",style: TextStyle(color: Colors.pink.shade700,fontSize: 15,fontWeight: FontWeight.w400),),
                          ],
                        ),
                        SizedBox(
                          height: 23,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}