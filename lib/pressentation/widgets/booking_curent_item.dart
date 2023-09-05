import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

class CurrentBooking extends StatelessWidget {
  const CurrentBooking({super.key});

  @override
  Widget build(BuildContext context) {
    void _showDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            width: 343.w,
            height: 369.h,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: AlertDialog(
                elevation: 0,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.w)),
                title: Container(
                    width: 343.w,
                    height: 350.h,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          AppConstants.doYouWantToCancelBooking,
                          style: TextStyle(
                              fontFamily: AppConstants.fontFamily,
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp),
                        ),
                        const Divider(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CustomButtonWithOnlyText(
                                color: Colors.white,
                                text: AppConstants.cancel,
                                textColor: AppStyles.primaryColor,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                                child: CustomButtonWithOnlyText(
                              color: AppStyles.primaryColor,
                              text: AppConstants.yesFollow,
                              textColor: Colors.white,
                            )),
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          );
        },
      );
    }

    return Card(
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
                        child: SvgPicture.asset("assets/images/Calendar.svg")),
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
                  width: 53.w,
                  height: 23.h,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8.w)),
                  child: Center(
                    child: Text(
                      AppConstants.payed,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 10.sp,
                          color: const Color(0xff40C97B),
                          fontFamily: AppConstants.fontFamily),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 35.w,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Container(
                      width: 80.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                          color: AppStyles.primaryColor,
                          borderRadius: BorderRadius.circular(8.w)),
                      child: Center(
                        child: Text(
                          AppConstants.showTicket,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontFamily: AppConstants.fontFamily,
                              fontSize: 10.sp),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      _showDialog();
                    },
                    child: Container(
                      width: 80.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8.w)),
                      child: Center(
                        child: Text(
                          AppConstants.cancelTrip,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: const Color(0xffEB5757),
                              fontFamily: AppConstants.fontFamily),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
