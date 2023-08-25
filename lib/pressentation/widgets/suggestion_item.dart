import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/app_constants.dart';
class SuggestionItem extends StatelessWidget {
  const SuggestionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return           Card(
      color: Colors.white,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        padding: EdgeInsets.all(15.w),
        child: Column(
          children: [
            Container(
              width: 340.w,
              height: 286.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.w),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1580418827493-f2b22c0a76cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8a2FhYmF8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60"))),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  AppConstants.labikOmraa,
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
              height: 15.h,
            ),
            Row(
              children: [
             // SvgPicture.asset("assets/images/Location.svg"),
                Text(
                  AppConstants.makaaSudia,
                  style: TextStyle(
                    fontFamily: AppConstants.fontFamily,
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                    color: const Color(0xff828282),
                  ),
                ),
                Spacer(),
                Container(
                  width: 24.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                      color: const Color(0xffE5F4FF),
                      borderRadius: BorderRadius.circular(12.w)),
                  child: const Text(
                    "50+",
                    style: TextStyle(
                        fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
