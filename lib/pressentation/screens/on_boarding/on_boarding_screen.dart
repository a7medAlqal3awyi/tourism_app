import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/pressentation/widgets/on_boarding_item.dart';

import '../../../data/model/on_boarding_model.dart';
import '../../../utils/app_constants.dart';
import '../auth_screeen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isLast = false;

  var boardingController = PageController();
  List<OnBoardingModel> boarding = [
    OnBoardingModel(
      value:1/3,
      image: 'assets/images/onBoarding1.png',
      avatarWidget: Padding(
        padding: EdgeInsets.only(left: 35.w),
        child: SvgPicture.asset(
          "assets/images/orange_shape.svg",
          width: 100.w,
          height: 10.h,
        ),
      ),
      richTextWidget: RichText(
        locale: const Locale('ar'),
        text: TextSpan(
          text: AppConstants.company,
          style: TextStyle(
            fontSize: 24.sp,
            color: Colors.black,
            fontFamily: AppConstants.fontFamily,
            fontWeight: FontWeight.w700,
          ),
          children: <TextSpan>[
            TextSpan(
              text: AppConstants.future,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                  fontFamily: AppConstants.fontFamily,
                  fontSize: 24.sp),
            ),
            TextSpan(
                text: AppConstants.si7a,
                style: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.black,
                  fontFamily: AppConstants.fontFamily,
                )),
          ],
        ),
      ),
      description: AppConstants.descriptionOnBoarding1,
    ),
    OnBoardingModel(
      value: 2/3,
      image: 'assets/images/onBoarding2.png',
      avatarWidget: Padding(
        padding: EdgeInsets.only(right: 50.w),
        child: SvgPicture.asset(
          "assets/images/orange_shape.svg",
          width: 100.w,
          height: 10.h,
        ),
      ),
      richTextWidget: RichText(
        locale: const Locale('ar'),
        text: TextSpan(
          text: AppConstants.book,
          style: TextStyle(
            fontSize: 24.sp,
            color: Colors.black,
            fontFamily: AppConstants.fontFamily,
            fontWeight: FontWeight.w700,
          ),
          children: <TextSpan>[
            TextSpan(
              text: AppConstants.tickets,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                  fontFamily: AppConstants.fontFamily,
                  fontSize: 24.sp),
            ),
          ],
        ),
      ),
      description: AppConstants.descriptionOnBoarding2,
    ),
    OnBoardingModel(
      value: 1,
      image: 'assets/images/onBoarding3.png',
      avatarWidget: Padding(
        padding: EdgeInsets.only(right: 150.w),
        child: SvgPicture.asset(
          "assets/images/orange_shape.svg",
          width: 100.w,
          height: 10.h,
        ),
      ),
      richTextWidget: RichText(
        locale: const Locale('ar'),
        text: TextSpan(
          text: AppConstants.tagrba,
          style: TextStyle(
            fontSize: 24.sp,
            color: Colors.black,
            fontFamily: AppConstants.fontFamily,
            fontWeight: FontWeight.w700,
          ),
          children: <TextSpan>[
            TextSpan(
              text: AppConstants.alsafar,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: AppConstants.fontFamily,
                  fontSize: 24.sp),
            ),
            TextSpan(
              text: AppConstants.alfarida,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                  fontFamily: AppConstants.fontFamily,
                  fontSize: 24.sp),
            ),
          ],
        ),
      ),
      description: AppConstants.descriptionOnBoarding3,
    ),
  ];

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
                      fontFamily: AppConstants.fontFamily,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
        body: Column(children: [
          Expanded(
            child: PageView.builder(
              controller: boardingController,
              onPageChanged: (int index) {
                if (index == boarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              itemBuilder: (context, index) => BuildOnBoardingItem(
                model:boarding[index],
                boardingController: boardingController,
                isLast: isLast,
                progressValue: boarding[index].value,
              ),
              itemCount: boarding.length,
            ),
          ),
        ]));
  }
}

