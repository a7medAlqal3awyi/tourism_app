import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/data/model/suggestion_model.dart';

import '../../utils/app_constants.dart';

class SuggestionItem extends StatelessWidget {
  SuggestionItem({super.key, this.onTap,required this.model});

  void Function()? onTap;
  SuggestionModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 268.w,
      height: 384.h,
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          padding: EdgeInsets.all(15.w),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 340.w,
                    height: 286.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.w),
                      image:  DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          model.image,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Padding(
                      padding: EdgeInsets.all(8.h),
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor:
                            const Color(0Xff1B1E28).withOpacity(.2),
                        child: SvgPicture.asset("assets/images/Heart.svg"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    model.title,
                    style: TextStyle(
                      fontFamily: AppConstants.fontFamily,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.star,
                    color: Color(0xffFFD336),
                  ),
                  Text(
                    "4.5",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        fontFamily: AppConstants.fontFamily),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  SvgPicture.asset("assets/images/Location.svg"),
                  Text(
                    model.location,
                    style: TextStyle(
                      fontFamily: AppConstants.fontFamily,
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                      color: const Color(0xff828282),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 24.w,
                    height: 24.h,
                    decoration: BoxDecoration(
                        color: const Color(0xffE5F4FF),
                        borderRadius: BorderRadius.circular(12.w)),
                    child: const Center(
                      child: Text(
                        "50+",
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
