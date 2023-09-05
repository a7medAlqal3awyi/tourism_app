import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/core/helper.dart';

import '../screens/search_result_screen.dart';

class SearchWidgetOfSearchScreen extends StatelessWidget {
  const SearchWidgetOfSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 48.h,
      decoration: BoxDecoration(
        boxShadow:const [
          BoxShadow(
          ),
        ] ,
          color: Colors.white, borderRadius: BorderRadius.circular(12.w)),
      padding: EdgeInsets.only(top: 60.w),
      child: Wrap(
        direction: Axis.horizontal,
        verticalDirection: VerticalDirection.up,
        children: [
          TextFormField(
            onFieldSubmitted: (value) {
              context.push( SearchResultScreen());
            },
            decoration: InputDecoration(
              prefixIcon: Container(
                padding: EdgeInsets.all(24.w),
                child: SvgPicture.asset("assets/images/Search.svg"),
              ),
              suffixIcon: Container(
                padding: EdgeInsets.all(24.w),
                child: SvgPicture.asset("assets/images/Voice.svg"),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12.w),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12.w),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
