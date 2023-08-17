import 'package:flutter/material.dart';
import 'package:tourism_app/pressentation/screens/onBoarding_screen.dart';
import 'package:tourism_app/utils/app_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const OnBoarding()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Image(
              image: AssetImage(
                'assets/images/splash1.png',
              ),
            ),
          ),
          Image(
            image: AssetImage(
              'assets/images/blueLoading.gif',
            ),
            fit: BoxFit.cover,
            height: 250,
          ),
        ],
      ),
    );
  }
}
