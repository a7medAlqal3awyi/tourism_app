import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';

class CustomLinearProgress extends StatelessWidget {
  const CustomLinearProgress(
      {super.key, required this.starNumber, required this.percentage});

  final int starNumber;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          " $starNumber نجوم ",
          style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: 161.w,
            clipBehavior: Clip.antiAlias,
            height: 11.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.h),
                color: AppStyles.Primary),
            child: LinearProgressIndicator(
              minHeight: 11,
              color: const Color(0xffF0F0F2),
              value: percentage,
              backgroundColor: AppStyles.Primary,
            ),
          ),
        ),
        Text(
          '${((1 - percentage) * 100).toInt()}%',
          style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontSize: 12.sp,
              color: AppStyles.Primary,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
