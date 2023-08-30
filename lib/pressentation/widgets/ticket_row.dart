import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constants.dart';

class TicketRow extends StatelessWidget {
  const TicketRow({super.key, required this.txt1, required this.txt2});

  final String txt1;
  final String txt2;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 50.w),
    child:  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt1,
          style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
              fontFamily: AppConstants.fontFamily,
              color: Colors.white),
        ),
        SizedBox(height: 20.h),
        Text(
          txt2,
          style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
              fontFamily: AppConstants.fontFamily,
              color: Colors.white),
        ),
      ],
    ),);
  }
}
