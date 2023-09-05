import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/screens/dashboard/dashboard_screen.dart';
import 'package:tourism_app/pressentation/widgets/alert_of_payment_succes.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../../utils/app_constants.dart';
import '../../widgets/ticket_row.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

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
            child: SizedBox(
              width: 348.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 190.h,
                    child: Image.asset('assets/images/done.gif'),
                  ),
                  Text(
                    AppConstants.paymentAndBookingSuccess,
                    style: TextStyle(
                      fontFamily: AppConstants.fontFamily,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(height: 20.h,),

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
                    height: 90.h,
                  ),
                  CustomButtonWithOnlyText(
                    onTap: (){
                      showAlert(context);
                    },
                      color: AppStyles.primaryColor,
                      text: AppConstants.downloadTicket,
                      textColor: Colors.white)
                ],
              ),
            ),
          ),
        ));
  }
}
void showAlert(context)
{
  showDialog(
    context: context,
    builder: (context)=>   CustomAlert(txt: AppConstants.downloadSuccess,
        imagePath: 'assets/images/done.gif',
        actions: [
          CustomButtonWithOnlyText(
            onTap: (){
              context.pushAndRemove(const DashboardScreen());
            },

              color: AppStyles.primaryColor, text: AppConstants.backToHome, textColor: Colors.white)
        ]
    )

  );
}