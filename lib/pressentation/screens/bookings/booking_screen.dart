import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/pressentation/widgets/booking_taps.dart';

import '../../../utils/app_constants.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen>
    with SingleTickerProviderStateMixin
    implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          AppConstants.bookings,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: const Icon(Icons.arrow_back_rounded),
        actions: [
          SvgPicture.asset('assets/images/BlueSearch.svg'),
          SizedBox(
            width: 25.w,
          ),
        ],
      ),
      body: const Column(
        children: [
          BookingTaps(),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
