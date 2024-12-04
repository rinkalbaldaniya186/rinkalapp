import 'package:flutter/material.dart';
import 'package:rinkalapp/onboarding/model/OnBoardingScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: PageViewExample(),
    );
  }
}

class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

PageController _PageController = PageController();
var currentPage = 0;

List<ScooterData> dataList = [];

class _PageViewExampleState extends State<PageViewExample> {

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
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Material App Bar',style: TextStyle(color: Colors.black),),
      // ),
      body: PageView.builder(
        itemBuilder: (context, index) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(dataList[index].image),
                        fit: BoxFit.fitWidth,
                      )
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(dataList[index].title,style: const TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(dataList[index].subTitle,style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400,),textAlign: TextAlign.center,),
                ),
                const SizedBox(
                  height: 30,
                ),
                SmoothPageIndicator(
                  controller: _PageController,
                  count:  3,
                  axisDirection: Axis.horizontal,
                  // effect:  SlideEffect(
                  //     spacing:  8.0,
                  //     radius:  7.0,
                  //     dotWidth:  24.0,
                  //     dotHeight:  16.0,
                  //     paintStyle:  PaintingStyle.stroke,
                  //     strokeWidth:  1.5,
                  //     dotColor:  Colors.grey,
                  //     activeDotColor:  Colors.indigo
                  // ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {
                          _PageController.animateToPage(
                              currentPage-1,
                              duration: const Duration(seconds: 1),
                              curve: Curves.bounceOut
                          );
                          currentPage = currentPage - 1;
                        },
                        child: Text('Previos',
                          style: TextStyle(
                            fontSize: 20,
                            color: (currentPage == 0) ? Colors.grey : Colors.blue.shade900),
                        )
                    ),
                    TextButton(
                        onPressed: () {
                          _PageController.animateToPage(
                              currentPage+1,
                              duration: const Duration(seconds: 1),
                              curve: Curves.bounceOut);
                          currentPage = currentPage + 1;
                        },
                        child: (currentPage == 2) ? const Text('Finish',style: TextStyle(color: Colors.grey, fontSize: 20),) : Text('Next',style: TextStyle(color: Colors.blue.shade900, fontSize: 20),),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        itemCount: dataList.length,
        controller: _PageController,
        onPageChanged: (value) {
          currentPage = value;
          print('Page $value');
        },
      )
    );
  }
}
