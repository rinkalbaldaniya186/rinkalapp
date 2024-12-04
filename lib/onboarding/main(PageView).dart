import 'package:flutter/material.dart';
import 'package:rinkalapp/onboarding/pageView.dart';
import 'package:rinkalapp/onboarding/model/OnBoardingScreen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Onboarding(),
    );
  }
}

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

List<ScooterData> dataList = [];
PageController _pageController = PageController();
var currentPage = 0;

class _OnboardingState extends State<Onboarding> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataList.add(ScooterData('assets/image/dish1.png','Choose A Tasty Dish','Order anything you want from your favorite restaurant.'));
    dataList.add(ScooterData('assets/image/dish2.png','Order','Place your personal order and make your day more delicious.'));
    dataList.add(ScooterData('assets/image/dish3.png','Pick Up Our Delivery','We make food ordering fast, simple and free - no matter if you order online or cash.'));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (value) {
          currentPage = value;
        },
        itemCount: dataList.length,
        itemBuilder: (context, index) {
           return PageViewExample(dataList[index]);
        },
      ),
        bottomSheet: Container(
          color: Colors.grey.shade300,
          height: 80,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // List.generate(listofData.length, (index) => ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {});
                        _pageController.animateToPage(currentPage - 1,
                            duration: const Duration(seconds: 1),
                            curve: Curves.bounceIn);
                        currentPage = currentPage - 1;
                      },
                      child: Text(
                        'Previous',
                        style: TextStyle(
                            color: (currentPage == 0) ? Colors.grey : Colors.blue),
                      )),
                  TextButton(
                      onPressed: () {
                        setState(() {});
                        _pageController.animateToPage(currentPage + 1,
                            duration: const Duration(seconds: 1),
                            curve: Curves.bounceIn);
                        currentPage = currentPage + 1;
                      },
                      child: (currentPage == 2) ? const Text('Finish',style: TextStyle(color: Colors.grey)) : const Text('Next',style: TextStyle(color: Colors.blue)),),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
