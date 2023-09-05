import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';

class CustomTapResultScreen extends StatefulWidget {
  const CustomTapResultScreen({super.key});

  @override
  State<CustomTapResultScreen> createState() => _CustomTapResultScreenState();
}

class _CustomTapResultScreenState extends State<CustomTapResultScreen>
    with SingleTickerProviderStateMixin
    implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);

    return Padding(

      padding:  EdgeInsets.symmetric(vertical: 15.h),
      child: TabBar(
          dividerColor: Colors.white,
          labelPadding: EdgeInsets.symmetric(
            horizontal: 5.w,
          ),
          labelColor: Colors.white,
          unselectedLabelColor: const Color(0xffA1A5C1),
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(24.w),
              color: AppStyles.primaryColor),
          unselectedLabelStyle: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontSize: 10.sp,
              fontWeight: FontWeight.w700),
          labelStyle: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontSize: 10.sp,
              fontWeight: FontWeight.w700),
          controller: tabController,
          splashBorderRadius: BorderRadius.circular(12.w),
          tabs: [
            Container(
              width: 80.w,
              height: 26.h,
              padding: EdgeInsets.all(5.w),
              child: Tab(
                text: AppConstants.highestPopular,
              ),
            ),
            Container(
              width: 80.w,
              height: 26.h,
              padding: EdgeInsets.all(5.w),
              child: Tab(
                text: AppConstants.highestRated,
              ),
            ),
            Container(
              width: 80.w,
              height: 26.h,
              padding: EdgeInsets.all(5.w),
              child: Tab(
                text: AppConstants.highestPrice,
              ),
            ),
            Container(
              width: 80.w,
              height: 26.h,
              padding: EdgeInsets.all(5.w),
              child: Tab(
                text: AppConstants.lowestPrice,
              ),
            ),
          ]),
    );
  }
}
