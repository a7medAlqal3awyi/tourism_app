import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constants.dart';

class AddNewCardWidget extends StatelessWidget {
  const AddNewCardWidget({super.key, required this.txt1, required this.txt2});

  final String txt1;
  final String txt2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 66.h,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.15),
          borderRadius: BorderRadius.circular(8.w)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              txt1,
              style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              txt2,
              style: TextStyle(
                color: const Color(0xffBDBDBD),
                fontFamily: AppConstants.fontFamily,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
