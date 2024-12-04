import 'package:flutter/material.dart';
import 'package:new_rinkalapp/onboarding/model/data.dart';

class LayoutScreen extends StatelessWidget {
  OnBoardingClass data;
  LayoutScreen(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(data.img)),
          const SizedBox(
            height: 10,
          ),
          Text(
            data.title,
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
              data.details,
              textAlign: TextAlign.center
          ),
        ],
      ),
    );
  }
}
