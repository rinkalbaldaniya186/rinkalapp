import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rinkalapp/Navigation/homePage.dart';
import 'package:rinkalapp/navigation/logIn.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
        // initialRoute: '/',
        // routes: {
        //   '/HomePage': (context) => HomePage(),
        // },
      home: SplashScreenExample(),
      //   home: StudentDetailPage.Default(),
    );
  }
}

class SplashScreenExample extends StatefulWidget {
  const SplashScreenExample({Key? key}) : super(key: key);

  @override
  State<SplashScreenExample> createState() => _SplashScreenExampleState();
}

class _SplashScreenExampleState extends State<SplashScreenExample> {

  // static const String isLoggedin = "LOGIN";

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  void checkLoginStatus(){
    Timer(const Duration(seconds: 3), () async {
      var pref = await SharedPreferences.getInstance();
      bool isLoggedin = pref.getBool('isLoggedin') ?? false;
      if(isLoggedin){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),));
      }
      else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogInPage.Default(),));
      }
    }
  );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/instagramLogo.jfif'),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

