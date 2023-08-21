import 'package:flutter/material.dart';
import 'package:tourism_app/pressentation/screens/on_boarding2.dart';
import 'package:tourism_app/pressentation/screens/on_coarding3.dart';

import 'on_boarding1.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: pageController, children: [
        FirstOnBoarding(
          PageController()
        ),
        SecondOnBoarding(
            PageController()

        ),
        ThirdOnBoarding(
            PageController()

        ),
      ]),
    );

}
}
