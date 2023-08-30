import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../utils/app_constants.dart';
import '../widgets/ticket_row.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppConstants.tickets,
            style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: SvgPicture.asset('assets/images/Home.svg'),
            )
          ],
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                SizedBox(
                  width: 240.w,
                  height: 194.h,
                  child: Column(

                    children: [
                      Container(
                        width: 150.w,
                        height: 150.w,
                        color: Colors.blue,
                        child: Text("Done animation"),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        maxLines: 1,
                        AppConstants.paymentAndBookingSuccess,
                        style: TextStyle(
                          fontFamily: AppConstants.fontFamily,
                          fontWeight: FontWeight.w700,
                          fontSize: 17.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 348.w,
                  height: 319.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.w),
                      color: const Color(0xff0D6EFD)),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: 117.w,
                            height: 117.h,
                            child: Image.asset('assets/images/Qrcode.png'),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          TicketRow(
                            txt1: AppConstants.name,
                            txt2: AppConstants.yourPhone,
                          ),
                          TicketRow(
                            txt1: AppConstants.ahmedAlqal3awyi,
                            txt2: AppConstants.number,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          TicketRow(
                            txt1: AppConstants.bookStart,
                            txt2: AppConstants.bookEnd,
                          ),
                          TicketRow(
                            txt1: AppConstants.startDate,
                            txt2: AppConstants.endDate,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          TicketRow(
                            txt1: AppConstants.hotel,
                            txt2: AppConstants.adultNum,
                          ),
                          TicketRow(
                            txt1: AppConstants.azkaSafaHotel,
                            txt2: "5",
                          ),
                        ],
                      ),
                      Positioned(
                        top: 170,
                        left: -20,
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 170,
                        right: -20,
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 110.h,
                ),
                CustomButtonWithOnlyText(
                    color: AppStyles.Primary,
                    text: AppConstants.downloadTicket,
                    textColor: Colors.white)
              ],
            ),
          ),
        ));
  }
}
