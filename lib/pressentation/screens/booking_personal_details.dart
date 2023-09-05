import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/screens/payment_screen.dart';
import 'package:tourism_app/pressentation/widgets/booking_personal_details_widget.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

class BookingPersonalDetails extends StatelessWidget {
  const BookingPersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        centerTitle: true,
        title: Text(
          AppConstants.bookingPersonalDetails,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BookingPersonalDetailsWidget(
            title: AppConstants.fullName,
            hint: AppConstants.enterFullName,
            iconPath: 'assets/images/Profile.svg',
          ),
          BookingPersonalDetailsWidget(
              title: AppConstants.nickName,
            iconPath: '',
              hint: AppConstants.enterNickName,

              ),
          BookingPersonalDetailsWidget(
            title: AppConstants.email,
            hint: AppConstants.enterYourEmail,
            iconPath: 'assets/images/EmailIcon.svg',
          ),
          BookingPersonalDetailsWidget(
            title: AppConstants.yourBirthdate,
            hint: AppConstants.enterYourBirthdate,
            iconPath: 'assets/images/Calendar.svg',
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            AppConstants.yourPhone,
            style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            width: 343.w,
            height: 48.h,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.1),
                borderRadius: BorderRadius.circular(8.w)),
            child: Row(
              children: [
                SvgPicture.asset('assets/images/Flag.svg'),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey,
                ),
                Text(
                  AppConstants.enterYourPhone,
                  style: TextStyle(
                    fontFamily: AppConstants.fontFamily,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff828282),
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 180.h,),
          CustomButtonWithOnlyText(
            onTap: (){
              context.push(const PaymentScreen());
            },
            color: AppStyles.primaryColor,
            text: AppConstants.follow,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
