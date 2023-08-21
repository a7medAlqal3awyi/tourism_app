import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/pressentation/screens/auth_creeen.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../utils/app_constants.dart';

class FirstOnBoarding extends StatelessWidget {
  final PageController pageController;

  const FirstOnBoarding(this.pageController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const AuthScreen(),
                  ),
                      (route) {
                    return false;
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius
                      .circular(14)
                      .w,
                ),
                child: Text(
                  AppConstants.skip,
                  locale: const Locale('ar'),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            RichText(
              locale: const Locale('ar'),
              text: TextSpan(
                text: AppConstants.company,
                style: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.black,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w700,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: AppConstants.future,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                        fontFamily: 'Tajawal',
                        fontSize: 24.sp),
                  ),
                  TextSpan(
                      text: AppConstants.si7a,
                      style: TextStyle(
                        fontSize: 24.sp,
                        color: Colors.black,
                        fontFamily: 'Tajawal',
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.w),
              child: SvgPicture.asset(
                "assets/images/orange_shape.svg",
                width: 100.w,
                height: 10.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 31.w, vertical: 10.h),
              child: Text(
                AppConstants.descriptionOnBoarding1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppStyles.onBoardingDescription,
                  locale: const Locale('ar'),
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    width: 343.w,
                    clipBehavior: Clip.antiAlias,
                    height: 450.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.cyanAccent),
                    child: Image.asset(
                      "assets/images/onBoarding1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 34.h),
            child: FloatingActionButton(
              elevation: 0,
              backgroundColor: Colors.white,
              onPressed: () {
                pageController.nextPage(duration: const Duration(
                  milliseconds: 100
                ), curve: Curves.easeIn);
              },
              shape: const CircleBorder(),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ),
          ),
        ),

    );
  }
}
