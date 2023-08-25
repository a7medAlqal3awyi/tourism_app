import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constants.dart';

class DoubleText extends StatelessWidget {
  const DoubleText(
      {super.key,this.onTap, required this.firstText, required this.secondText});

  final String firstText;
  final String secondText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      width: 343.w,
      height: 20.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            firstText,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                fontFamily: AppConstants.fontFamily),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: Text(
              secondText,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 10.sp,
                  color: const Color(0xff0D6EFD),
                  fontFamily: AppConstants.fontFamily),
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xff0D6EFD),
            size: 14,
          )
        ],
      ),
    );
  }
}
