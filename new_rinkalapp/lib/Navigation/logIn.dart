import 'package:flutter/material.dart';
import 'package:new_rinkalapp/navigation/homePage.dart';
import 'package:new_rinkalapp/navigation/registerPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogInPage extends StatefulWidget {
  var emailtxt, passWordtxt;

  LogInPage(this.emailtxt, this.passWordtxt, {super.key});
  LogInPage.Default({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState(emailtxt, passWordtxt);
}

var _eError, _pError;
var _pObscureText = true;
TextEditingController _eTextcontroller = TextEditingController();
TextEditingController _pTextcontroller = TextEditingController();

class _LogInPageState extends State<LogInPage> {
  var emailtxt, passWordtxt;

  _LogInPageState(this.emailtxt, this.passWordtxt);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Login',
            style: TextStyle(
                color: Colors.green,
                fontSize: 28,
                fontWeight: FontWeight.w800)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                maxRadius: 78,
                backgroundImage: AssetImage('assets/image/girl10.jpg'),
              ),
              const Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              const Text(
                'Sign in to Continue',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black, width: 2),
                    ),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black, width: 3),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black, width: 3),
                    ),
                    hintText: 'Email Address',
                    hintStyle: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                    labelText: 'Email',
                    labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                    floatingLabelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    errorText: _eError,
                    errorMaxLines: 2,
                    errorStyle: const TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                    ),
                    contentPadding: const EdgeInsets.all(20),
                    prefixIcon:
                        const Icon(Icons.email, color: Colors.black, size: 27),
                  ),
                  controller: _eTextcontroller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black, width: 2),
                      ),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black, width: 3),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.grey, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black, width: 3),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                      floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      errorText: _pError,
                      errorMaxLines: 2,
                      errorStyle: const TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.red, width: 2),
                      ),
                      contentPadding: const EdgeInsets.all(10),
                      prefixIcon:
                          const Icon(Icons.lock, color: Colors.black, size: 27),
                      suffix: IconButton(
                        icon: const Icon(Icons.remove_red_eye),
                        onPressed: () {
                          if (_pObscureText == true) {
                            setState(() {
                              _pObscureText = false;
                            });
                          } else {
                            setState(() {
                              _pObscureText = true;
                            });
                          }
                        },
                      )),
                  obscureText: _pObscureText,
                  controller: _pTextcontroller,
                ),
              ),
              const SizedBox(
                height: 50,
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
                    var er = 0;
                    var eText = _eTextcontroller.text;
                    var pText = _pTextcontroller.text;

                    if (eText == '') {
                      setState(() {
                        er++;
                        _eError = 'Please Enter Your Email Address';
                      });
                    }
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(eText)) {
                      // (?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$
                      // /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$/
                      setState(() {
                        er++;
                        _eError = 'Email is not in valid format';
                      });
                    }

                    if (emailtxt != eText) {
                      er++;
                      setState(() {
                        _eError =
                            'Please Enetr Your Register Page Email Address';
                      });
                    }

                    if (pText == '') {
                      setState(() {
                        er++;
                        _pError = 'Please Enter Your Password';
                      });
                    }
                    if (!RegExp(
                            r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$")
                        .hasMatch(pText)) {
                      // (?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$
                      // /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$/
                      setState(() {
                        er++;
                        _pError = 'Password is not valid';
                      });
                    }

                    if (passWordtxt != pText) {
                      er++;
                      setState(() {
                        _pError = 'Please Enter your Register Page Password';
                      });
                    }

                    if (er == 0) {
                      setState(() {
                        _eError = _pError = null;
                      });
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(SaveRecord),));
                      // saveRecord(eText,pText);
                      _setData(emailtxt);

                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));

                      //   Navigator.pushNamed(context, '/HomePage');
                    }
                  },
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  // onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                  // },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: const Text('Log in as Guest')),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have account? ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    child: Text(
                      'Create a new account',
                      style: TextStyle(
                        color: Colors.green.shade700,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const registerPage(),
                          ));
                    },
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

Future<void> _setData(String emailtxt) async {
  var pref = await SharedPreferences.getInstance();
  await pref.setBool("isLoggedin", true);
  await pref.setString("UNAME", emailtxt);
}

