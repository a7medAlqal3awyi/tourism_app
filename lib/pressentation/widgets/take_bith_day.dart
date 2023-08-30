import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';

class TakeBirthDay extends StatefulWidget {
  const TakeBirthDay({super.key});

  @override
  State<TakeBirthDay> createState() => _TakeBirthDayState();
}

class _TakeBirthDayState extends State<TakeBirthDay> {
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Container(
        color: Colors.grey.shade100,
        child: TextField(
          controller: dateController,
          decoration: InputDecoration(
            suffixIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.w),
                child: SvgPicture.asset(
                  'assets/images/Calendar.svg',
                )),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.w),
            ),
            hintText: AppConstants.enterYourBirthdate,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Colors.grey, width: 0, style: BorderStyle.none),
              borderRadius: BorderRadius.circular(8.w),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.w),
              borderSide: BorderSide(
                color: AppStyles.primaryColor,
              ),
            ),
            hintStyle: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          readOnly: false,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime(2101));

            if (pickedDate != null) {
              print(pickedDate);
              String formattedDate =
                  DateFormat('dd/MM/yyyy').format(pickedDate);
              print(formattedDate);

              setState(() {
                dateController.text = formattedDate;
              });
              FocusScope.of(context).requestFocus(FocusNode());
            } else {
              print("Date is not selected");
            }
          },
        ),
      ),
    );
  }
}
