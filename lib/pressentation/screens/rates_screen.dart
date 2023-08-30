import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/pressentation/widgets/custom_linear_progress.dart';
import 'package:tourism_app/utils/app_constants.dart';

import '../../data/model/suggestion_model.dart';
import '../../utils/app_styles.dart';
import '../widgets/custom_chat_text_form.dart';
import '../widgets/feed_back_widget.dart';

class RatesScreen extends StatelessWidget {
  const RatesScreen({super.key, required this.suggestionModel});

  final SuggestionModel suggestionModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppConstants.rates,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
          ),
        ),
      ),
      body: ListView(

        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      suggestionModel.rate.toInt().toString(),
                      style: TextStyle(
                          fontFamily: AppConstants.fontFamily,
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/Star.svg'),
                        SvgPicture.asset('assets/images/Star.svg'),
                        SvgPicture.asset('assets/images/Star.svg'),
                        SvgPicture.asset('assets/images/Star.svg'),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'تقيم 204',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          fontFamily: AppConstants.fontFamily,
                          color: AppStyles.primaryColor),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              const Expanded(
                flex: 3,
                child: Column(
                  children: [
                    CustomLinearProgress(starNumber: 5, percentage: .16),
                    CustomLinearProgress(starNumber: 4, percentage: .84),
                    CustomLinearProgress(starNumber: 3, percentage: .88),
                    CustomLinearProgress(starNumber: 2, percentage: .92),
                    CustomLinearProgress(starNumber: 1, percentage: .96),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButtonWithOnlyText(
                color: AppStyles.primaryColor,
                text: AppConstants.writeYrRates,
                textColor: Colors.white),
          ),
          SizedBox(height: 30.h),
          const FeedBackWidget(),
          SizedBox(height: 30.h),

          const FeedBackWidget(),
          SizedBox(height: 30.h),

          const FeedBackWidget(),
          const CustomTextChat()

        ],
      ),
    );
  }
}
