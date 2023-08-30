import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_constants.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({
    super.key,
    required this.title,
    required this.supTitle,
    required this.date,
    required this.person,
  });

  final String title;
  final String supTitle;
  final String date;
  final int person;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding:  EdgeInsets.all(10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 155.w,
            height: 42.h,
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.w),

                color: Colors.grey.withOpacity(.1),
            ),
            clipBehavior: Clip.none,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  date,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                      fontFamily: AppConstants.fontFamily),
                ),
                SvgPicture.asset('assets/images/Calendar.svg'),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            supTitle,
            style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 155.w,
            height: 42.h,
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.w),
                color: Colors.grey.withOpacity(.1),
            ),
            clipBehavior: Clip.none,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  person.toInt().toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                      fontFamily: AppConstants.fontFamily),
                ),
                const Icon(Icons.keyboard_arrow_down)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
