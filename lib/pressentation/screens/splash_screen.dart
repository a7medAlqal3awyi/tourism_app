import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/pressentation/screens/on_boarding_screen.dart';
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
          context,
          MaterialPageRoute(
              builder: (context) => const OnBoardingScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.Primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 180.h,
          ),
          Center(
            child: SvgPicture.asset(
              "assets/images/splash.svg",
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Image(
            image: const AssetImage(
              'assets/images/blueLoading.gif',
            ),
            fit: BoxFit.cover,
            height: 200.h,
          ),
        ],
      ),
    );
  }
}
