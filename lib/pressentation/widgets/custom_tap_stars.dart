import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_styles.dart';

class CustomTabsStars extends StatefulWidget {
  const CustomTabsStars({super.key});

  @override
  State<CustomTabsStars> createState() => _CustomTabsStarsState();
}

class _CustomTabsStarsState extends State<CustomTabsStars>
    with SingleTickerProviderStateMixin
    implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);

  @override
  Widget build(BuildContext context) {
    TabController starsController = TabController(length: 5, vsync: this);

    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 15.h),
      child: TabBar(
          dividerColor: Colors.white,
          labelPadding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(12.w),
              color: AppStyles.primaryColor),
          controller: starsController,
          tabAlignment: TabAlignment.start,
          isScrollable: true,

          tabs: [
            Container(
              width: 45.w,
              height: 30.h,
              padding: EdgeInsets.all(5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("5",
                      style: TextStyle(color: Colors.white, fontSize: 10.sp)),
                  const Icon(
                    Icons.star,
                    size: 15,
                    color: Color(0xffEAC92C),
                  ),
                ],
              ),
            ),
            Container(
              width: 45.w,
              height: 30.h,
              padding: EdgeInsets.all(5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("4",
                      style: TextStyle(color: Colors.grey, fontSize: 10.sp)),
                  const Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              width: 45.w,
              height: 30.h,
              padding: EdgeInsets.all(5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("3",
                      style: TextStyle(color: Colors.grey, fontSize: 10.sp)),
                  const Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              width: 45.w,
              height: 30.h,
              padding: EdgeInsets.all(5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("2",
                      style: TextStyle(color: Colors.grey, fontSize: 10.sp)),
                  const Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              width: 45.w,
              height: 30.h,
              padding: EdgeInsets.all(5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("1",
                      style: TextStyle(color: Colors.grey, fontSize: 10.sp)),
                  const Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
