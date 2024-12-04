import 'dart:async';
import 'package:flutter/material.dart';
import 'package:new_rinkalapp/ResumeBuilder/onboardingScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    screenChange();
  }

  void screenChange(){
    Timer(const Duration(seconds: 5), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OnboardingScreen(),));
            // var pref = await SharedPreferences.getInstance();
            // bool isOnboarding = pref.getBool('isOnboarding') ?? false;
            // if(isOnboarding){
            //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AppHomePage(),));
            // }
            // else{
            //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingScreen(),));
            // }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/resumeLogo.avif'),
            )
          ),
        ),
      ),
    );
  }
}
