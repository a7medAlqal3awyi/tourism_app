import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constants.dart';
class PaymentVerification extends StatelessWidget {
  const PaymentVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

    );
  }
}
