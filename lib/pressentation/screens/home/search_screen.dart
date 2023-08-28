import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_constants.dart';
import '../../widgets/double_text_without_icon.dart';

class SearchScreen extends StatelessWidget {
   const SearchScreen({
     super.key});

  @override
  Widget build(BuildContext context) {
    var searchController =TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppConstants.search,
          style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 16.sp),
        ),
      ),
      body: Column(
        children: [
          Card(
            color: Colors.white,
            margin: EdgeInsets.all(10.w),
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                TextFormField(
                  controller: searchController,
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
          ),
           DoubleTextWithoutIcon(
            onTap:(){
              searchController.clear();
            } ,
          ),

        ],
      ),
    );
  }
}
