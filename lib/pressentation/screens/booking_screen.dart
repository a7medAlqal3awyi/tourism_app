import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';
import '../widgets/icon_favorite.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen>
    with SingleTickerProviderStateMixin
    implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);

  @override
  Widget build(BuildContext context) {
    TabController tapController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppConstants.bookings,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          SvgPicture.asset('assets/images/BlueSearch.svg'),
          SizedBox(
            width: 25.w,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 343.w,
              height: 32.h,
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32.w)),
              child: TabBar(
                indicatorPadding: EdgeInsets.symmetric(horizontal: 0.w),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(24), // Creates border
                  color: AppStyles.Primary,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: const Color(0xffA1A5C1),
                labelStyle: TextStyle(
                    fontFamily: AppConstants.fontFamily,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700),
                controller: tapController,
                tabs: [
                  SizedBox(
                    width: 93.w,
                    child: Tab(
                      text: AppConstants.current,
                    ),
                  ),
                  SizedBox(
                    width: 93.w,
                    child: Tab(height: 32.h, text: AppConstants.done),
                  ),
                  SizedBox(
                    width: 93.w,
                    child: Tab(height: 32.h, text: AppConstants.cancel),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Card(
                elevation: 1,
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18.w),
                  ),
                  width: 343.w,
                  height: 140.h,
                  padding: EdgeInsets.all(5.w),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                              width: 103.w,
                              height: 127.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.w),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    "https://th.bing.com/th/id/OIP.csdSsNh0XWN8Ce3u5nWLcwHaEH?pid=ImgDet&rs=1",
                                  ),
                                ),
                              )),
                          const FavouriteIcon()
                        ],
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Eygpt",
                              style: TextStyle(
                                fontFamily: AppConstants.fontFamily,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: SvgPicture.asset(
                                        "assets/images/Calendar.svg")),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "3 stemper",
                                  style: TextStyle(
                                      fontFamily: AppConstants.fontFamily,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 53.w,
                                  height: 23.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.w),
                                    color: Colors.grey.withOpacity(.05),
                                  ),
                                  child: Center(
                                    child: Text(
                                      AppConstants.payed,
                                      style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                        color: const Color(0xff40C97B),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20.h),
                          child: Container(
                            width: 50.w,
                            height: 26.h,
                            decoration: BoxDecoration(
                                color: AppStyles.Primary,
                                borderRadius: BorderRadius.circular(8.w)),
                            child: Center(
                              child: Text(
                                "5000",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontFamily: AppConstants.fontFamily,
                                    fontSize: 12.sp),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
