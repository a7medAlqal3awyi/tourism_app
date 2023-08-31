import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../data/model/watched_later_model.dart';
import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';
import 'icon_favorite.dart';

class WatchedLaterItem extends StatelessWidget {
  const WatchedLaterItem({super.key, required this.model});

  final WatchedLaterModel model;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 2.h),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
            top: 10.h,
            right: 7.w
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: 137.w,
                    height: 124.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.w),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          model.image,
                        ),
                      ),
                    ),
                  ),
                   FavouriteIcon(

                  ),
                ],
              ),
              SizedBox(
                height: 5.w,
              ),
              Text(
                model.place,
                style: TextStyle(
                  fontFamily: AppConstants.fontFamily,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                height: 5.w,
              ),
              Wrap(
                children: [
                  SvgPicture.asset("assets/images/Location.svg"),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    model.location,
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: const Color(0xFF828282),
                        fontWeight: FontWeight.w500,
                        fontFamily: AppConstants.fontFamily),
                  )
                ],
              ),
              SizedBox(
                height: 5.w,
              ),
              Wrap(
                children: [
                  SvgPicture.asset('assets/images/Star.svg'),
                  SvgPicture.asset('assets/images/Star.svg'),
                  SvgPicture.asset('assets/images/Star.svg'),
                  SvgPicture.asset('assets/images/Star.svg'),
                  Text(
                    "${model.rate}",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontFamily: AppConstants.fontFamily,
                        fontSize: 14.sp),
                  )
                ],
              ),
              SizedBox(
                height: 5.w,
              ),
              Row(
                children: [
                  Text(
                    "  ${model.price.toInt()} ج/ ",
                    style: TextStyle(
                        fontFamily: AppConstants.fontFamily,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        color: AppStyles.primaryColor),
                  ),
                  Text(
                    AppConstants.night,
                    style: TextStyle(
                        fontFamily: AppConstants.fontFamily,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        color: const Color(0xFF828282)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
