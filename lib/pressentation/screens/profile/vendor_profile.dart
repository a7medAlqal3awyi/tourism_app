import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/data/model/suggestion_model.dart';
import 'package:tourism_app/pressentation/widgets/hotel_tap_bar.dart';
import 'package:tourism_app/utils/app_constants.dart';

import '../../widgets/faclites_block.dart';

class VendorProfileScreen extends StatelessWidget {
  const VendorProfileScreen({super.key, required this.suggestionModel});

  final SuggestionModel suggestionModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          suggestionModel.name,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.h),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Text(AppConstants.facilities,
              style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10.h,),
            const FacilitiesBlock(),
            SizedBox(height: 10.h,),

            Text(AppConstants.photos,
              style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10.h,),
            const HotelTabBar( ),

          ],
        ),
      ),
    );
  }
}
