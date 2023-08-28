import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 144.w,
            height: 44.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(42.w),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right:2.h),
                  child: const CircleAvatar(
                    foregroundImage: AssetImage("assets/images/ahmed.jpg"),
                    radius: 20,
                  ),
                ),
                Text(
                  AppConstants.wellcomeAhmed,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      fontFamily: "Tajawal"),
                )
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                width: 44.w,
                height: 44.h,
                decoration: BoxDecoration(
                  color: const Color(0XFFF5F4F8),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset("assets/images/Notification.svg"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.w, top: 10.h),
                child: Container(
                  width: 10.w,
                  height: 10.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 8.w,
                  height: 8.h,
                  decoration: const BoxDecoration(
                    color: Color(0xffFF7029),
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
