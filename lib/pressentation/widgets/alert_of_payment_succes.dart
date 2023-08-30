import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

class AlertPaymentSuccess extends StatelessWidget {
  const AlertPaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 369.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: AlertDialog(
        content: Text("Success payment"),
        actions: [
          CustomButtonWithOnlyText(
              color: AppStyles.primaryColor,
              text: AppConstants.showTicket,
              textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
