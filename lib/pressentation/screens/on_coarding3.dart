import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';
import 'auth_creeen.dart';
class ThirdOnBoarding extends StatelessWidget {
  final PageController pageController;


const ThirdOnBoarding(this.pageController,{super.key});

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
                borderRadius: BorderRadius.circular(14).w,
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
            height: 20.h,
          ),
          RichText(
            locale: const Locale('ar'),
            text: TextSpan(
              text: AppConstants.tagrba,
              style: TextStyle(
                fontSize: 24.sp,
                color: Colors.black,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w700,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: AppConstants.alsafar,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Tajawal',
                      fontSize: 24.sp),
                ),
                TextSpan(
                  text: AppConstants.alfarida,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                      fontFamily: 'Tajawal',
                      fontSize: 24.sp),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right:150.w ),
            child: SvgPicture.asset(
              "assets/images/orange_shape.svg",
              width: 100.w,
              height: 10.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Text(
              AppConstants.descriptionOnBoarding3,
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
                    "assets/images/onBoarding3.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
