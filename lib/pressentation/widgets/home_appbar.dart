import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 144.w,
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(42.w),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.h),
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
                child: SvgPicture.asset("assets/images/Notification.svg"),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5.w, top: 5.h),
                child: Container(
                  width: 15.w,
                  height: 15.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  width: 10.w,
                  height: 10.h,
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
