import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';

class CallScreenBottomActions extends StatelessWidget {
  const CallScreenBottomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w, left: 10.w, top: 140),
      child: Container(
        width: 375.w,
        height: 188.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.w),
            color: Colors.grey.withOpacity(.2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(
                    Icons.mic_off_outlined,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(
                    IconBroken.Chat,
                    size: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 230.w,
              height: 70.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.w),
                  color: AppStyles.primaryColor),
              child: Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      AppConstants.endCall,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: AppConstants.fontFamily,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: const Icon(
                        Icons.call_end_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
