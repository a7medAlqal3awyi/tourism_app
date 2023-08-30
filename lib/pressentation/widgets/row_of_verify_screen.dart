import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constants.dart';

class VerifyRow extends StatelessWidget {
  const VerifyRow({super.key, required this.txt1, required this.txt2});

  final String txt1;
  final String txt2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(txt1,
            style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
                color: const Color(0xff828282)
            ),),
          Text(txt2,
            style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
                color: const Color(0xff4F4F4F)
            ),),

        ],
      ),
    );
  }
}
