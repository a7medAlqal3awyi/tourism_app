import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/screens/payment/verify_payment_screen.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../../utils/app_constants.dart';
import '../../widgets/add_new_card_widget.dart';

class AddNewCreditScreen extends StatelessWidget {
  const AddNewCreditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppConstants.addCredit,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/Card.png'),
          SizedBox(
            height: 20.h,
          ),
          AddNewCardWidget(
            txt1: AppConstants.cardName,
            txt2: AppConstants.ahmedKaled,
          ),
          SizedBox(
            height: 20.h,
          ),
          AddNewCardWidget(
            txt1: AppConstants.cardNumber,
            txt2: AppConstants.expass,
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: Row(
              children: [
                Expanded(
                  child: AddNewCardWidget(
                    txt1: AppConstants.cardNumber,
                    txt2: AppConstants.expass,
                  ),
                ),
                SizedBox(
                  width: 30.w,
                ),
                Expanded(
                  child: AddNewCardWidget(
                    txt1: AppConstants.cardNumber,
                    txt2: AppConstants.expass,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 180.h,
          ),
          CustomButtonWithOnlyText(
            onTap: (){
              context.push(PaymentVerification());
            },
              color: AppStyles.primaryColor,
              text: AppConstants.follow,
              textColor: Colors.white)
        ],
      ),
    );
  }
}
