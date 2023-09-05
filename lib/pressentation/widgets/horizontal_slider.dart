import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HorizontalSlider extends StatelessWidget {
  const HorizontalSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return               Center(
      child: Padding(
        padding:  EdgeInsets.only(top:15.0.h,bottom: 20.h),
        child: Container(
          width: 36.w,
          height: 5.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.w),

              color: const Color(0xff7D848D)
          ),
        ),
      ),
    );
  }
}
