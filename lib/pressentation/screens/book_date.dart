import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../widgets/booking_details.dart';
import '../widgets/month_calender.dart';
import 'booking_personal_details.dart';

class BookDateScreen extends StatelessWidget {
  const BookDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppConstants.dateOfBook,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          const CalendarScreen(),
          Row(
            children: [
              BookingDetails(
                title: AppConstants.fromDay,
                date: AppConstants.startDate,
                person: 5,
                supTitle: AppConstants.adultNum,
              ),
              BookingDetails(
                title: AppConstants.toDay,
                date: AppConstants.endDate,
                person: 2,
                supTitle: AppConstants.childNum,
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              width: 335.w,
              height: 20.h,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppConstants.neededPrice,
                    style: TextStyle(
                        fontFamily: AppConstants.fontFamily,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "20000 جنيه",
                    style: TextStyle(
                        fontFamily: AppConstants.fontFamily,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: AppStyles.primaryColor),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),

          CustomButtonWithOnlyText(
            onTap: (){
              context.push(const BookingPersonalDetails());
            },
              color: AppStyles.primaryColor, text: AppConstants.follow, textColor: Colors.white)
        ],
      ),
    );
  }
}
