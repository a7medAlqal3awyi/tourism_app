import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';


class HotelTabBar extends StatefulWidget {
  const HotelTabBar({super.key});

  @override
  State<HotelTabBar> createState() => _HotelTabBarState();
}

class _HotelTabBarState extends State<HotelTabBar>
    with SingleTickerProviderStateMixin
    implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);

  @override
  Widget build(BuildContext context) {

    TabController tapController = TabController(length: 5, vsync: this);
    return Column(
      children: [
        SizedBox(
          height: 40.h,
          child: TabBar(
              isScrollable: true,
              indicatorColor: AppStyles.primaryColor,
              labelColor: AppStyles.primaryColor,
              unselectedLabelColor: const Color(0xffBDBDBD),
              labelStyle: TextStyle(
                  fontFamily: AppConstants.fontFamily,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700),
              controller: tapController,
              tabs: [
                Tab(
                  text: AppConstants.rooms,
                ),
                Tab(
                  text: AppConstants.reception,
                ),
                Tab(
                  text: AppConstants.restaurants,
                ),
                Tab(
                  text: AppConstants.parking,
                ),
                Tab(
                  text: AppConstants.halls,
                ),
              ]
          ),
        ),
        Padding(
          padding:  EdgeInsets.all(
              8.w),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              controller: tapController,
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Container(
                              width: 109.w,
                              height: 180.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.w),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://th.bing.com/th/id/OIP.oa6wkUpT9KjcmuimacYq3gHaE6?pid=ImgDet&rs=1'))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Container(
                              width: 109.w,
                              height: 78.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.w),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://img.freepik.com/free-photo/luxury-classic-modern-bedroom-suite-hotel_105762-1787.jpg?w=996&t=st=1693230184~exp=1693230784~hmac=22e21da72e4dece2a5eb8ffea2d59cd202cfe0df94f84300e2ccf3918494d865'))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Container(
                              width: 109.w,
                              height: 180.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.w),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://img.freepik.com/premium-photo/swimming-pool-beach-luxury-hotel_146671-19409.jpg?size=626&ext=jpg&uid=R90481992&ga=GA1.2.800814309.1675616854&semt=sph'
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                            ),
                          ),

                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Container(
                              width: 109.w,
                              height: 78.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.w),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://img.freepik.com/free-photo/3d-rendering-luxury-modern-living-room-with-leather-sofa-lamp_105762-2255.jpg?size=626&ext=jpg&uid=R90481992&ga=GA1.2.800814309.1675616854&semt=sph'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Container(
                              width: 109.w,
                              height: 78.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.w),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://th.bing.com/th/id/OIP.oa6wkUpT9KjcmuimacYq3gHaE6?pid=ImgDet&rs=1'))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Container(
                              width: 109.w,
                              height: 180.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.w),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://img.freepik.com/free-photo/friendly-cheerful-hotel-administrator-taking-guest-feedback-asking-about-their-stay-during-check-out-process-resort-staff-employees-working-front-desk-check-reception_482257-65130.jpg?w=1060&t=st=1693238155~exp=1693238755~hmac=4667809463c416229f4c31dd075ff5602dbce746fcf4bdd3bc1e8d50519494fd'))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Container(
                              width: 109.w,
                              height: 78.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.w),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://img.freepik.com/free-photo/croissant-boiled-egg-orange-juice-yogurt-breakfast-tray-bed-hotel-room_176474-2601.jpg?w=740&t=st=1693238157~exp=1693238757~hmac=82808cf1645043b1258a24db0294c9ad9fd89a4dffcc76baa913bac0e3bb3da3'))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Container(
                              width: 109.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.w),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://img.freepik.com/free-photo/elegant-hotel-room-with-big-bed_1203-1494.jpg?w=996&t=st=1693238169~exp=1693238769~hmac=38c2ab16f4916d15bce4f8afedf647850aeb8a947a14d118ff6d777ebd51b2b7'))),
                              height: 180.h,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Container(
                              width: 109.w,
                              height: 180.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.w),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://as1.ftcdn.net/v2/jpg/00/85/83/36/1000_F_85833605_c4qjZQQjbnkhn8GPVPSrphTlpVpuhbDA.jpg'))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Container(
                              width: 109.w,
                              height: 78.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.w),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://img.freepik.com/free-photo/spacious-hotel-room-with-rug_1203-1495.jpg?t=st=1693238169~exp=1693238769~hmac=982621b74385a16cf39b9c197dc7c855b38eb2cdbe073218b24eacea8b396a2a'))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Container(
                              width: 109.w,
                              height: 180.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.w),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://img.freepik.com/free-photo/luxury-hotel-reception-hall-lounge-restaurant-with-high-ceiling_105762-1771.jpg?w=996&t=st=1693238493~exp=1693239093~hmac=ab64a27dbb65a00f51b24422296c9a5cb0e9c8bda291635c70bffc8d77c3cbfc'))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Container(
                              width: 109.w,
                              height: 78.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.w),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://img.freepik.com/premium-photo/illustration-bedroom-interior_252025-15977.jpg'))),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
