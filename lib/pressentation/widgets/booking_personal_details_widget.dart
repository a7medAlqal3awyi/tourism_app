import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_constants.dart';

class BookingPersonalDetailsWidget extends StatelessWidget {
   const BookingPersonalDetailsWidget(
      {super.key,
        this.iconPath,
        required this.title, required this.hint});

  final String title;
  final String hint;
 final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10.h),
    child:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          width: 343.w,
          height: 48.h,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.1),
              borderRadius: BorderRadius.circular(8.w)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hint,
                style: TextStyle(
                  fontFamily: AppConstants.fontFamily,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff828282),
                  fontSize: 14.sp,
                ),
              ),
              SvgPicture.asset(iconPath!)
            ],
          ),
        )
      ],
    ),);
  }
}
