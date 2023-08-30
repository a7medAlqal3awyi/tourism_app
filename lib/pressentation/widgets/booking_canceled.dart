import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

class CanceledBooking extends StatelessWidget {
  const CanceledBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return   Card(
      elevation: 1,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.w),
        ),
        width: 343.w,
        height: 100.h,
        padding: EdgeInsets.all(2.w),
        child: Row(
          children: [
            Container(
                width: 71.w,
                height: 88.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.w),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.PdSiD3sJ7K_-7XGVopCR0gHaEo?pid=ImgDet&rs=1'),
                  ),
                )),
            SizedBox(
              width: 3.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  AppConstants.fourSeason,
                  style: TextStyle(
                    fontFamily: AppConstants.fontFamily,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 14,
                        height: 14,
                        child: SvgPicture.asset(
                            "assets/images/Calendar.svg")),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      AppConstants.duration,
                      style: TextStyle(
                          fontFamily: AppConstants.fontFamily,
                          fontSize: 12.sp,
                          color: const Color(0xff828282),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  width: 86.w,
                  height: 23.h,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8.w)),
                  child: Center(
                    child: Text(
                      AppConstants.bookingCanceled,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 10.sp,
                          color:  AppStyles.redColor,
                          fontFamily: AppConstants.fontFamily),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 35.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                      color: AppStyles.primaryColor,
                      borderRadius: BorderRadius.circular(8.w)),
                  child: Center(
                    child: Text(
                      AppConstants.rebooking,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: AppConstants.fontFamily,
                          fontSize: 10.sp),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
