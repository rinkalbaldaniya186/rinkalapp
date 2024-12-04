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
var _error1, _er;
var genderValue;
var checkboxValue;
bool chessTF = false;
bool cricketTF = false;
bool cricketERR = false;


class _LoginPageExampleState extends State<LoginPageExample> {
  final _fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Material App Bar'),
      // ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://www.propergroove.org/wp-content/uploads/iStock-494347092-1030x618.jpg',
            fit: BoxFit.fitHeight,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                children: [
                  Form(
                    key: _fromkey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        /*CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-photo/view-delicious-burgers-with-buns-cheese_23-2150887893.jpg'),
                        // https://img.freepik.com/premium-photo/beef-burger-photography-side-view-white-background_124185-5035.jpg
                        maxRadius: 110,
                      ),*/
                        const SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () {
                            print('tap on login now');
                          },
                          child: const Text(
                            'Login Now',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Please enter the details below to continue',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.grey)),
                            hintText: 'Email',
                            labelText: 'Email Adress',
                            floatingLabelAlignment: FloatingLabelAlignment.start,
                            floatingLabelStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            filled: false,
                            fillColor: Colors.grey.shade300,
                          ),
                          validator: (value) {
                            print(value);
                            if (value == null || value == '') {
                              return 'Please enter an email address';
                            } else if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                              // else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value))
                              return 'Please enter a valid email address';
                            }
                            else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Password',
                            labelText: 'Password',
                            floatingLabelAlignment: FloatingLabelAlignment.start,
                            floatingLabelStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            filled: false,
                            fillColor: Colors.grey.shade300,
                            suffix: IconButton(
                              onPressed: () {
                                if (_obscuretxt == true) {
                                  setState(() {
                                    _obscuretxt = false;
                                  });
                                } else {
                                  setState(() {
                                    _obscuretxt = true;
                                  });
                                }
                              },
                              icon: const Icon(Icons.remove_red_eye),
                            ),
                          ),
                          obscureText: _obscuretxt,
                          validator: (value) {
                            if(value == null || value == ''){
                              return 'Please Enter password';
                            }
                            else if(!RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$").hasMatch(value)){
                              return 'Please Enter password in valid formate';
                            }
                            else{
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            const Text('Gender'),
                            Radio(
                              value: 'Male',
                              groupValue: genderValue,
                              onChanged: (value) {
                                setState(() {
                                  print(value);
                                  genderValue = value;
                                });
                              },
                            ),
                            const Text('Male'),
                            const SizedBox(
                              width: 10,
                            ),
                            Radio(
                              value: 'Female',
                              groupValue: genderValue,
                              onChanged: (value) {
                                setState(() {
                                  print(value);
                                  genderValue = value;
                                });
                              },
                            ),
                            const Text('Female'),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Text('Hobbies'),
                            Checkbox(
                              value: chessTF,
                              onChanged: (value) {
                                setState(() {
                                  chessTF = value!;
                                  print(value);
                                });
                              },
                            ),
                            const Text('Chess'),
                            const SizedBox(
                              width: 10,
                            ),
                            Checkbox(
                              isError: cricketERR,
                              activeColor: Colors.blue.shade700,
                              checkColor: Colors.white,
                              focusColor: Colors.pink,
                              value: cricketTF,
                              onChanged: (value) {
                                setState(() {
                                  cricketTF = value!;
                                  print(value);
                                });
                              },
                            ),
                            const Text('Cricket'),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          // color: Colors.lightBlue,
                          height: 55,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey)),
                          child: ElevatedButton(
                              onPressed: () {
                                /*if (_fromkey.currentState!.validate()) {
                                  print('Login Successfully');
                                }
                                else {
                                  print('Try again for log in your account');
                                }*/

                                if(genderValue == 'Male' || genderValue ==  'Female'){
                                  //return null;
                                  print('gender ok');
                                }
                                else{
                                  print('Please select gender');
                                }

                                if(chessTF == false && cricketTF == false){
                                  print('please select hobbies');
                                  setState(() {
                                    cricketERR = true;
                                  });
                                }
                                else {
                                  //return null;
                                  print('ok hobbies');
                                  setState(() {
                                    cricketERR = false;
                                  });
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
                            const Text(
                              "Don't have an account! ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.pink.shade700,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}