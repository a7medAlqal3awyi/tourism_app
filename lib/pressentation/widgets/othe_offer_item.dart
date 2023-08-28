import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/data/model/offer_model.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';
import 'icon_favorite.dart';

class OtherOffersItem extends StatelessWidget {
  const OtherOffersItem({super.key, required this.model, this.onTap});

  final OffersModel model;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Container(
          color: Colors.white,
          width: 343.w,
          height: 140.h,
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                      width: 103.w,
                      height: 127.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.w),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              model.image),
                        ),
                      )
                  ),
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
                      model.place,
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
                            child:
                            SvgPicture.asset("assets/images/Calendar.svg")),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          model.duration,
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
                        const Icon(
                          size: 15,
                          Icons.star,
                          color: Color(0xffFFD336),
                        ),
                        const Icon(
                          size: 15,
                          Icons.star,
                          color: Color(0xffFFD336),
                        ),
                        const Icon(
                          size: 15,
                          Icons.star,
                          color: Color(0xffFFD336),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '${model.rate}',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              fontFamily: AppConstants.fontFamily),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      AppConstants.peopleJoined,
                      style: TextStyle(
                        fontFamily: AppConstants.fontFamily,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                      ),
                    )
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
                        "${model.price.toInt()}ج",
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
    );
  }
}
