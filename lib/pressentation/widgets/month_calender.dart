import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';
class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime? _selectedDay;
  DateTime? _focusedDay;
  final DateTime _firstDay = DateTime.now().subtract(const Duration(days: 5));
  final DateTime _lastDay = DateTime.now().add(const Duration(days: 7));

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _focusedDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.h),
      child: Card(
        margin: EdgeInsets.all(10.w),

        color: Colors.white,
        child: TableCalendar(

          locale: 'ar',
          calendarStyle: CalendarStyle(

              defaultTextStyle:  const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xff333333),
              ),
              disabledTextStyle:  const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xff333333),
              ),
              tableBorder: TableBorder.all(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.withOpacity(.2),
                  style: BorderStyle.none
              ),
          ),
          headerStyle: HeaderStyle(
              titleCentered: true,
              formatButtonVisible: false,
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: AppConstants.fontFamily,
                fontSize: 18,

              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.w),
                  color: Colors.white
              )
          ),
          daysOfWeekHeight: 50,
          daysOfWeekStyle: DaysOfWeekStyle(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            weekdayStyle: TextStyle(
                fontSize: 10.sp,
                fontFamily: AppConstants.fontFamily,
                fontWeight: FontWeight.w700
            ),
            weekendStyle: TextStyle(
                fontSize: 10.sp,
                fontFamily: AppConstants.fontFamily,
                fontWeight: FontWeight.w700
            ),

          ),

          firstDay: _firstDay,
          lastDay: _lastDay,
          focusedDay: _focusedDay!,
          calendarFormat: _calendarFormat,

          selectedDayPredicate: (day) {
            final start = DateTime.now().subtract(const Duration(days: 5));
            final end = DateTime.now().add(const Duration(days: 5));

            return day.isAfter(start) && day.isBefore(end);
          },
          calendarBuilders: CalendarBuilders(
            selectedBuilder: (context, date, _) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${date.day}',
                    style:  TextStyle(
                        color: AppStyles.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500

                    ),
                  ),
                ),
              );
            },

          ),

          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          },
          onFormatChanged: (format) {
            setState(() {
              _calendarFormat = format;
            });
          },
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
        ),
      ),
    );
  }
}