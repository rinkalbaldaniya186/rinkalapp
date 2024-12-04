import 'package:flutter/material.dart';
import 'layoutScreen.dart';
import 'model/data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: OnBoardingExample(),
    );
  }
}

class OnBoardingExample extends StatefulWidget {
  const OnBoardingExample({super.key});

  @override
  State<OnBoardingExample> createState() => _OnBoardingExampleState();
}

List<OnBoardingClass> listofData = [];
PageController _pageController = PageController();
var currenPage = 0;

class _OnBoardingExampleState extends State<OnBoardingExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listofData.add(OnBoardingClass(
        'Grate Learning Environment',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ',
        'assets/image/boy.png'));
    listofData.add(OnBoardingClass(
        'Experience Faculty',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ',
        'assets/image/boy2.png'));
    listofData.add(OnBoardingClass(
        'Study Material',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ',
        'assets/image/boy3.png'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (value) {
          currenPage = value;
        },
        itemCount: listofData.length,
        itemBuilder: (context, index) {
          return LayoutScreen(listofData[index]);
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
                      _pageController.animateToPage(currenPage - 1,
                          duration: const Duration(seconds: 1),
                          curve: Curves.bounceIn);
                      currenPage = currenPage - 1;
                    },
                    child: Text(
                      'Previous',
                      style: TextStyle(
                          color: (currenPage == 0) ? Colors.grey : Colors.blue),
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {});
                      _pageController.animateToPage(currenPage + 1,
                          duration: const Duration(seconds: 1),
                          curve: Curves.bounceIn);
                      currenPage = currenPage + 1;
                    },
                    child: (currenPage == 2) ? const Text('Finish') : const Text('Next')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
