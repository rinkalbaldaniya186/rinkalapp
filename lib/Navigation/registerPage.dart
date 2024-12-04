import 'package:flutter/material.dart';
import 'package:rinkalapp/navigation/logIn.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

SnackBar snackBar = const SnackBar(
  content: Text('Congratulation! Your Account is Create'),
  behavior: SnackBarBehavior.floating,
  showCloseIcon: true,
);

var _error1,_error2,_error3,_error4,_error5;
var _obscureText4 = true;
var _obscureText5 = true;
TextEditingController _txtcontroller1 = TextEditingController();
TextEditingController _txtcontroller2 = TextEditingController();
TextEditingController _txtcontroller3 = TextEditingController();
TextEditingController _txtcontroller4 = TextEditingController();
TextEditingController _txtcontroller5 = TextEditingController();

class _registerPageState extends State<registerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Register Page',style: TextStyle(color: Colors.green,fontSize: 28,fontWeight: FontWeight.w800)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Create Account',style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.w700),),
              const Text('Create a new account',style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w400)),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 17,left: 17,top: 10,bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black,width: 2),
                    ),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black,width: 3),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey,width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black,width: 3),
                    ),
                    hintText: 'First Name',
                    hintStyle: TextStyle(color: Colors.grey.shade800,fontSize: 20,fontWeight: FontWeight.w400),
                    labelText: 'First Name',
                    labelStyle: const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),
                    floatingLabelStyle: const TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w400),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    errorText: _error1,
                    errorStyle: const TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w400),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red,width: 2),
                    ),
                    contentPadding: const EdgeInsets.all(20),
                    prefixIcon: const Icon(Icons.person,color: Colors.black,size: 27),
                  ),
                  controller: _txtcontroller1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17,left: 17,top: 10,bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black,width: 2),
                    ),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black,width: 3),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey,width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black,width: 3),
                    ),
                    hintText: 'Last Name',
                    hintStyle: TextStyle(color: Colors.grey.shade800,fontSize: 20,fontWeight: FontWeight.w400),
                    labelText: 'Last Name',
                    labelStyle: const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),
                    floatingLabelStyle: const TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w400),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    errorText: _error2,
                    errorStyle: const TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w400),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red,width: 2),
                    ),
                    contentPadding: const EdgeInsets.all(20),
                    prefixIcon: const Icon(Icons.person,color: Colors.black,size: 27),
                  ),
                  controller: _txtcontroller2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17,left: 17,top: 10,bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black,width: 2),
                    ),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black,width: 3),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey,width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black,width: 3),
                    ),
                    hintText: 'Email Address',
                    hintStyle: TextStyle(color: Colors.grey.shade800,fontSize: 20,fontWeight: FontWeight.w400),
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),
                    floatingLabelStyle: const TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w400),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    errorText: _error3,
                    errorStyle: const TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w400),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red,width: 2),
                    ),
                    contentPadding: const EdgeInsets.all(20),
                    prefixIcon: const Icon(Icons.email,color: Colors.black,size: 27),
                  ),
                  controller: _txtcontroller3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17,left: 17,top: 10,bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black,width: 2),
                      ),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black,width: 3),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.grey,width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black,width: 3),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey.shade800,fontSize: 20,fontWeight: FontWeight.w400),
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),
                      floatingLabelStyle: const TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w400),
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      errorText: _error4,
                      errorStyle: const TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w400),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.red,width: 2),
                      ),
                      contentPadding: const EdgeInsets.all(10),

                      prefixIcon: const Icon(Icons.lock,color: Colors.black,size: 27),
                      suffix: IconButton(
                        icon: const Icon(Icons.remove_red_eye),
                        onPressed: () {
                          if(_obscureText4 == true){
                            setState(() {
                              _obscureText4 = false;
                            });
                          }
                          else{
                            setState(() {
                              _obscureText4 = true;
                            });
                          }
                        },
                      )
                  ),
                  obscureText: _obscureText4,
                  controller: _txtcontroller4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17,left: 17,top: 10,bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black,width: 2),
                      ),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black,width: 3),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.grey,width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black,width: 3),
                      ),
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Colors.grey.shade800,fontSize: 20,fontWeight: FontWeight.w400),
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),
                      floatingLabelStyle: const TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w400),
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      errorText: _error5,
                      errorStyle: const TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w400),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.red,width: 2),
                      ),
                      contentPadding: const EdgeInsets.all(10),

                      prefixIcon: const Icon(Icons.lock,color: Colors.black,size: 27),
                      suffix: IconButton(
                        icon: const Icon(Icons.remove_red_eye),
                        onPressed: () {
                          if(_obscureText5 == true){
                            setState(() {
                              _obscureText5 = false;
                            });
                          }
                          else{
                            setState(() {
                              _obscureText5 = true;
                            });
                          }
                        },
                      )
                  ),
                  obscureText: _obscureText5,
                  controller: _txtcontroller5,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                height: 60,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.green),
                  color: Colors.green,
                ),
                //  color: Colors.green,
                child: TextButton(
                      onPressed: () {
                        var err = 0;
                        if(_txtcontroller1.text == ''){
                          setState(() {
                            err++;
                            _error1 = 'Please Enter Your First Name';
                          });
                        }
                        if(!RegExp('[a-zA-Z]').hasMatch(_txtcontroller1.text)){
                          setState(() {
                            err++;
                            _error1 = 'First Name is not Valid';
                          });
                        }

                        if(_txtcontroller2.text == ''){
                          setState(() {
                            err++;
                            _error2 = 'Please Enter Your Last Name';
                          });
                        }
                        if(!RegExp('[a-zA-Z]').hasMatch(_txtcontroller2.text)){
                          // !RegExp(r"^[A-Z][A-Za-z0-9_]{5,31}$")
                          setState(() {
                            err++;
                            _error2 = 'Last Name is not Valid';
                          });
                        }

                        if(_txtcontroller3.text == ''){
                          setState(() {
                            err++;
                            _error3 = 'Please Enter Your Email Address';
                          });
                        }
                        if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(_txtcontroller3.text)){
                          setState(() {
                            err++;
                            _error3 = 'Email is not in valid format';
                          });
                        }

                        if(_txtcontroller4.text == ''){
                          setState(() {
                            err++;
                            _error4 = 'Please Enter Your Password';
                          });
                        }
                        if(!RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$").hasMatch(_txtcontroller4.text)){
                          setState(() {
                            err++;
                            _error4 = 'Password is not valid';
                          });
                        }

                        if(_txtcontroller5.text == ''){
                          setState(() {
                            err++;
                            _error5 = 'Please Enter Your Confirm Password';
                          });
                        }
                        if(!RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$").hasMatch(_txtcontroller5.text)){
                          setState(() {
                            err++;
                            _error5 = 'Confirm password is not valid';
                          });
                        }

                        if(_txtcontroller4.text != _txtcontroller5.text){
                          setState(() {
                            err++;
                            _error5 = 'Please Enter Password and Confirm Password are Same';
                            _error4 = 'Please Enter Password and Confirm Password are Same';
                          });
                        }

                        if(err==0)
                        {
                          setState(() {
                            _error1 = _error2 = _error3 = _error4 = _error5 = null;
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            var emailtxt = _txtcontroller3.text;
                            var passWordtxt = _txtcontroller4.text;
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogInPage(emailtxt,passWordtxt),));
                          });
                        }
                      },
                        child: const Text('Create Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      //   onTap: () {
                      //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      // },

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have account? ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                 Text('Log In',
                      style: TextStyle(
                          color: Colors.green.shade700,
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}