import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_constants.dart';
class FeedBackWidget extends StatelessWidget {
  const FeedBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      textDirection: TextDirection.rtl,
      clipBehavior: Clip.none,
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.h,
                horizontal: 6.w),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(.4),


              ),
              borderRadius: BorderRadius.circular(12.w),
              color: Colors.white,

            ),
            width: 343.w,
            height: 100.h,
            margin: EdgeInsets.all(5.w),

            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      AppConstants.ahmedAlqal3awyi,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                          fontFamily: AppConstants.fontFamily),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                            'assets/images/OrangeStarFade.svg'),
                        SvgPicture.asset('assets/images/OrangeStar.svg'),
                        SvgPicture.asset('assets/images/OrangeStar.svg'),
                        SvgPicture.asset('assets/images/OrangeStar.svg'),
                        SvgPicture.asset('assets/images/OrangeStar.svg'),

                        Padding(
                          padding: EdgeInsets.only(right:90.w,),
                          child: Text(
                            AppConstants.date,
                            style: TextStyle(
                                fontFamily: AppConstants.fontFamily,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff828282)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  AppConstants.ratedDescription,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      fontFamily: AppConstants.fontFamily),
                )
              ],
            ),
          ),
        ),
        const Positioned(
          top: -30,
          right: 171.5,
          child: CircleAvatar(

            radius:25 ,
            foregroundImage: AssetImage(
                'assets/images/ahmed.jpg'
            ),
          ),
        ),

      ],
    );
  }
}
