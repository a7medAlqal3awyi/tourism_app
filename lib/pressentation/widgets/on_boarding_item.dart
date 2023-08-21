import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';
import 'package:tourism_app/data/model/on_boarding_model.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';

Widget buildOnBoardingItem(OnBoardingModel model) => Column(
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
          padding: EdgeInsets.symmetric(horizontal: 31.w, vertical: 10.h),
          child: Text(
            model.description,
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
                  model.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
             const Positioned(
              bottom: 110,
              right: 140,
              child: ProgressBar(
                width: 50,
                backgroundColor: Colors.white,
                value: .5,
                color: Colors.deepOrange,
                height: 5,
              ),
            ),
          ],
        ),
      ],
    );
