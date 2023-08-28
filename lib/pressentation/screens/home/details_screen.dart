import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/data/model/suggestion_model.dart';
import 'package:tourism_app/pressentation/widgets/custom_icon.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../widgets/details_app_bar.dart';
import '../../widgets/full_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.suggestionModel,
  });

  final SuggestionModel suggestionModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        children: [
          Stack(children: [
            Transform.scale(
              scale: 1.17,
              child: Container(
                width: double.maxFinite,
                height: 450.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(suggestionModel.image))),
              ),
            ),
            const DetailsAppBar(),
          ]),
          SizedBox(
            height: 50.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        suggestionModel.title,
                        style: TextStyle(
                            fontFamily: AppConstants.fontFamily,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 24.sp),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30.w,
                            height: 30.h,
                            child: const CircleAvatar(
                              foregroundImage:
                                  AssetImage("assets/images/ahmed.jpg"),
                              radius: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            suggestionModel.name,
                            style: TextStyle(
                                color: const Color(0xff7D848D),
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                                fontFamily: "Tajawal"),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "5000",
                        style: TextStyle(
                          fontFamily: AppConstants.fontFamily,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: AppStyles.Primary,
                        ),
                      ),
                      Text(
                        "/فرد",
                        style: TextStyle(
                          fontFamily: AppConstants.fontFamily,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff828282),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/images/Location.svg"),
                  Text(
                    suggestionModel.location,
                    style: TextStyle(
                      fontFamily: AppConstants.fontFamily,
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                      color: const Color(0xff828282),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.w, left: 5.w),
                    child: const Icon(
                      Icons.star,
                      size: 20,
                      color: Color(0xffFFD336),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Text(
                      "${suggestionModel.rate}",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          fontFamily: AppConstants.fontFamily),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Text(
                      "(2465)",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: AppStyles.Primary,
                          fontFamily: AppConstants.fontFamily),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      context.push(fullScreenImage(suggestionModel, context));
                    },
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: const BoxDecoration(
                        color: Color(0xffFAFAFA),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: SvgPicture.asset("assets/images/360.svg")),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: 343.w,
            height: 42.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.w),
                  child: Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:NetworkImage(
                        suggestionModel.image
                      )
                    ),
                        borderRadius: BorderRadius.circular(12.w)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.w),
                  child: Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:NetworkImage(
                        suggestionModel.image
                      )
                    ),
                        borderRadius: BorderRadius.circular(12.w)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.w),
                  child: Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:NetworkImage(
                        suggestionModel.image
                      )
                    ),
                        borderRadius: BorderRadius.circular(12.w)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.w),
                  child: Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:NetworkImage(
                        suggestionModel.image
                      )
                    ),
                        borderRadius: BorderRadius.circular(12.w)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.w),
                  child: Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:NetworkImage(
                        suggestionModel.image
                      )
                    ),
                        borderRadius: BorderRadius.circular(12.w)),
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                    padding:  EdgeInsets.symmetric(horizontal:9.w),
                    child: Container(

                      width: 42.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:NetworkImage(
                          suggestionModel.image
                        )
                      ),
                          borderRadius: BorderRadius.circular(12.w)
                      ),
                    ),
                  ),
                    Positioned(
                      top: 15,
                      left: 15,
                      child: Text("16+",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontFamily: AppConstants.fontFamily
                      ),),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
