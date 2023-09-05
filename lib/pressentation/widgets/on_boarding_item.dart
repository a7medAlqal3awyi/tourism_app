import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/utils/app_constants.dart';

import '../../data/model/on_boarding_model.dart';
import '../../utils/app_styles.dart';
import '../screens/auth_screeen.dart';

class BuildOnBoardingItem extends StatelessWidget {
  const BuildOnBoardingItem({super.key, required this.model, required this.isLast, required this.boardingController, required this.progressValue});

  final OnBoardingModel model;
  final double progressValue;
  final PageController boardingController;

  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        model.richTextWidget,
        model.avatarWidget,
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 31.w, vertical: 10.h),
          child: Text(
            model.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              height: 1.9,
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              fontFamily: AppConstants.fontFamily,
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                width: 343.w,
                clipBehavior: Clip.antiAlias,
                height: 500.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Image.asset(
                  model.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 90,
              left: MediaQuery.of(context).size.width / 2.5,
              child: SizedBox(
                width: 70.w,
                child: LinearProgressIndicator(
                  color: AppStyles.favColor,
                  backgroundColor: Colors.white,
                  value: progressValue,
                ),
              ),
            ),

            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(top: 420.h),
              child: FloatingActionButton(
                elevation: 0,
                onPressed: () {
                  if (isLast) {
                    context.pushAndRemove(const AuthScreen());
                  } else {
                    boardingController.nextPage(
                      duration: const Duration(
                        microseconds: 750,
                      ),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  }
                },
                backgroundColor: Colors.white,
                shape: const CircleBorder(),
                child: Icon(
                  Icons.arrow_forward,
                  color: AppStyles.primaryColor,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
