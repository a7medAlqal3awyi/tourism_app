import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';
import '../widgets/patment_option.dart';
import '../widgets/selection_widget.dart';
import 'add_new_credit.dart';

enum SingingCharacter { lafayette, jefferson }

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppConstants.payment,
            style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppConstants.paymentMethod,
                style: TextStyle(
                  fontFamily: AppConstants.fontFamily,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),

              SizedBox(
                height: 10.h,
              ),

              const RadioListTileExample(),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                child: Text(
                  AppConstants.addCredit,
                  style: TextStyle(
                    fontFamily: AppConstants.fontFamily,
                    fontWeight: FontWeight.w700,
                    color: AppStyles.Primary,
                    fontSize: 12.sp,
                  ),
                ),
                onTap: () {
                  context.push(const AddNewCreditScreen());
                },
              ),
              Spacer(),
              CustomButtonWithOnlyText(
                  color: AppStyles.Primary,
                  text: AppConstants.follow,
                  textColor: Colors.white),
              SizedBox(
                height: 40.h,
              ),
              // RadioListTileApp()
            ],
          ),
        ));
  }
}
