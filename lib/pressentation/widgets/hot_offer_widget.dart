import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';

class HotOffers extends StatelessWidget {
  const HotOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
      child: Container(
        width: 343.w,
        height: 130.h,
        padding: EdgeInsets.only(right: 15.w),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.w),
            color: AppStyles.Primary),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    AppConstants.planToYourJourney,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontFamily: AppConstants.fontFamily,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 179,
                    height: 43,
                    child: Text(
                      maxLines: 2,
                      AppConstants.spendLongWithFriends,
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.white,
                          fontFamily: AppConstants.fontFamily,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    maxLines: 2,
                    AppConstants.reserveNow,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontFamily: AppConstants.fontFamily,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Positioned(
                top: -20,
                left: -37,
                child: Image.asset(
                    height: 170.h, width: 180.w, "assets/images/Ellipse.png")),
            Positioned(
              left: 90,
              top: 20,
              child: Container(
                width: 60.w,
                height: 60.h,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffFF7029)),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 15.h,
                    right: 15.w,
                  ),
                  child: Text(
                    AppConstants.discount,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: AppConstants.fontFamily,
                        fontSize: 12.sp),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
