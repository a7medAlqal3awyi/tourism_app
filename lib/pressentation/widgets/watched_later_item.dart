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
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10.h),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
            right: 10.w,
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
                  const FavouriteIcon(),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Color(0xffFFD336),
                  ),
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Color(0xffFFD336),
                  ),
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Color(0xffFFD336),
                  ),
                  Text(
                    "${model.rate.toInt()}",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: AppConstants.fontFamily,
                        fontSize: 12.sp),
                  )
                ],
              ),
              SizedBox(
                height: 5.w,
              ),
              Row(
                children: [
                  Text(
                    " ج/ ${model.price} ",
                    style: TextStyle(
                        fontFamily: AppConstants.fontFamily,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        color: AppStyles.Primary),
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
