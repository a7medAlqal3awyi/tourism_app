import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/core/helper.dart';

import '../../utils/app_constants.dart';
import '../screens/home/search_screen.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key,});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 120,
      child: GestureDetector(
        onTap: (){
          context.push( const SearchScreen());
        },
        child: Container(
          width: 343.w,
          height: 48.h,
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.w),
            color: Colors.white,
          ),
          child: Row(
            children: [
              SvgPicture.asset("assets/images/Search.svg"),
              Text(
                AppConstants.searchByPlaceOrCountry,
                style: TextStyle(
                  fontFamily: "Tajawal",
                  color: Color(0xffBDBDBD),
                  fontWeight: FontWeight.w700,
                  fontSize: 12.sp,
                ),
              ),
              Spacer(),
              Container(
                height: 27.h,
                width: 2.w,
                color: Color(0xffA1A5C1),
              ),
              SizedBox(
                width: 20.w,
              ),
              SvgPicture.asset("assets/images/Voice.svg"),
            ],
          ),
        ),
      ),

    );
  }
}
