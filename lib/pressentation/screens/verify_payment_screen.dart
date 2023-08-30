import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/data/model/offer_model.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/pressentation/widgets/othe_offer_item.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';
import '../widgets/alert_of_payment_succes.dart';
import '../widgets/row_of_verify_screen.dart';

class PaymentVerification extends StatelessWidget {
  PaymentVerification({super.key, this.offersModel});

  OffersModel? offersModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppConstants.verifyPayment,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          OtherOffersItem(
            model: OffersModel(
                image:
                'https://th.bing.com/th/id/R.a0b057e83a341e92941b9f2c494c6ab1?rik=fplOLhvDYEZBPg&pid=ImgRaw&r=0',
                place: AppConstants.labikOmraa,
                duration: AppConstants.duration,
                rate: 4.5,
                price: 500),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 343.w,
            height: 232.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.w),
              border: Border.all(color: Colors.grey.shade200),
              color: Colors.white,
            ),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Column(
                  children: [
                    VerifyRow(
                      txt1: AppConstants.fromDay,
                      txt2: AppConstants.start,
                    ),
                    VerifyRow(
                      txt1: AppConstants.toDay,
                      txt2: AppConstants.end,
                    ),
                    VerifyRow(
                      txt1: AppConstants.adultNum,
                      txt2: "5",
                    ),
                    VerifyRow(txt1: AppConstants.twnyNight, txt2: "50000"),
                    VerifyRow(txt1: AppConstants.additons, txt2: "100"),
                    Divider(
                      color: Colors.grey,
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppConstants.total,
                          style: TextStyle(
                            fontFamily: AppConstants.fontFamily,
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "51,000 جنية",
                          style: TextStyle(
                              fontFamily: AppConstants.fontFamily,
                              fontWeight: FontWeight.w700,
                              fontSize: 12.sp,
                              color: AppStyles.Primary),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 343.w,
            height: 48.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.w),
              border: Border.all(color: Colors.grey.shade200),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Image.asset('assets/images/Credit.png'),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'emd@gmail.com.....',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        fontFamily: AppConstants.fontFamily,
                        color: const Color(0xff53587A)),
                  ),
                  const Spacer(),
                  SvgPicture.asset('assets/images/EditSquare.svg')
                ],
              ),
            ),
          ),
          SizedBox(
            height: 170.h,
          ),
          CustomButtonWithOnlyText(

            ///ToDo
              onTap: () {
                const AlertPaymentSuccess();
              },
              color: AppStyles.Primary,
              text: AppConstants.verifyPayment,
              textColor: Colors.white)
        ],
      ),
    );
  }
}
