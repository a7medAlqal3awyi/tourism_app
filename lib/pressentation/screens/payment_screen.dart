import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';
import '../widgets/patment_option.dart';
import 'add_new_credit.dart';

enum SingingCharacter { lafayette, jefferson }

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectedValue=0;
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.h),
              child: Text(
                AppConstants.paymentMethod,
                style: TextStyle(
                  fontFamily: AppConstants.fontFamily,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
            ),

            SizedBox(
              height: 10.h,
            ),
            ListTile(
              title: PaymentOptions(
                imagePath: 'assets/images/Credit.png',
                txt: AppConstants.credit,
              ),
              trailing: Radio<int>(
                activeColor: AppStyles.primaryColor,
                value: 0,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: PaymentOptions(
                  imagePath: 'assets/images/ApplePay.png',
                  txt: AppConstants.applePay),
              trailing: Radio<int>(
                activeColor: AppStyles.primaryColor,
                value: 1,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
              ),
            ),
            ListTile(
              title:  PaymentOptions(
                  imagePath: 'assets/images/PayPal.png', txt: AppConstants.paypal),
              trailing: Radio<int>(
                activeColor: AppStyles.primaryColor,
                value: 2,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.h),
                child: Text(
                  AppConstants.addCredit,
                  style: TextStyle(
                    fontFamily: AppConstants.fontFamily,
                    fontWeight: FontWeight.w700,
                    color: AppStyles.primaryColor,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              onTap: () {
                context.push(const AddNewCreditScreen());
              },
            ),
            const Spacer(),



            Center(
              child: CustomButtonWithOnlyText(
                  color: AppStyles.primaryColor,
                  text: AppConstants.follow,
                  textColor: Colors.white),
            ),
            SizedBox(
              height: 40.h,
            ),
            // RadioListTileApp()
          ],
        ));
  }
}
