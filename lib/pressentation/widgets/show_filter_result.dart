import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';
import 'check_box.dart';
import 'custom_tab_result_screen.dart';
import 'custom_tap_stars.dart';
import 'horizontal_slider.dart';

class ShowResultFilter extends StatefulWidget {
  const ShowResultFilter({super.key});

  @override
  State<ShowResultFilter> createState() => _ShowResultFilterState();
}

class _ShowResultFilterState extends State<ShowResultFilter>
    with SingleTickerProviderStateMixin
    implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 542.w,
          padding: EdgeInsets.all(10.w),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const HorizontalSlider(),
              Container(
                color: Colors.white,
                width: 343.w,
                height: 20.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppConstants.filterSearchResult,
                      style: TextStyle(
                        fontFamily: AppConstants.fontFamily,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                    ),
                    Text(
                      AppConstants.reSet,
                      style: TextStyle(
                          fontFamily: AppConstants.fontFamily,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: AppStyles.primaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                AppConstants.sortResultAcroding,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: AppConstants.fontFamily,
                ),
              ),
              const CustomTapResultScreen(),
              Text(
                AppConstants.price,
                style: TextStyle(
                  fontFamily: AppConstants.fontFamily,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SvgPicture.asset('assets/images/slider.svg'),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppConstants.theRate,
                style: TextStyle(
                  fontFamily: AppConstants.fontFamily,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const CustomTabsStars(),
              Text(
                AppConstants.availableService,
                style: TextStyle(
                  fontFamily: AppConstants.fontFamily,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomCheckBox(
                      title: AppConstants.wifi,
                    ),
                    CustomCheckBox(
                      title: AppConstants.pool,
                    ),
                    CustomCheckBox(
                      title: AppConstants.resorts,
                    ),
                    CustomCheckBox(
                      title: AppConstants.villas,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButtonWithOnlyText(
                onTap: (){
                  context.pop(context);
                },
                  color: AppStyles.primaryColor,
                  text: AppConstants.showResult32a,
                  textColor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}
