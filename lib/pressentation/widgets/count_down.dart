import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
class CountDownWidget extends StatelessWidget {
  const CountDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return             Container(
      width: 120.w,
      height: 50.h,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: Colors.orange.shade100.withOpacity(.4),
        borderRadius: BorderRadius.circular(50.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.h,),
              CupertinoPageScaffold(
                backgroundColor:
                Colors.orange.shade100.withOpacity(.4),
                child: TimerCountdown(
                  enableDescriptions: false,
                  timeTextStyle: TextStyle(
                    fontFamily: "Tajawal",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800,
                  ),
                  colonsTextStyle: TextStyle(
                    fontFamily: "Tajawal",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800,
                  ),
                  format: CountDownTimerFormat.minutesSeconds,
                  onEnd: () {
                    print("Timer finished");
                  },
                  endTime: DateTime.now().add(
                      const Duration(seconds: 55, milliseconds: 5)),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10.w,
          ),
          SvgPicture.asset("assets/images/Timer.svg"),
        ],
      ),
    );
  }
}
