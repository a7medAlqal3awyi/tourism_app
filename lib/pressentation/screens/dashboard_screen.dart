import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:tourism_app/pressentation/screens/booking_screen.dart';
import 'package:tourism_app/pressentation/screens/favourite_screen.dart';
import 'package:tourism_app/pressentation/screens/home/home.dart';
import 'package:tourism_app/pressentation/screens/profile_screen.dart';
import 'package:tourism_app/pressentation/screens/ticket.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Color background = Colors.white;
  Color fontColor = const Color(0xff7D848D);
  int currentIndex = 0;
  List<IconData> icons = [
    IconBroken.Home,
    IconBroken.Ticket,
    IconBroken.Heart,
    IconBroken.Profile,
  ];
  List<Widget>screens= [
    HomeScreen(),
    const BookingScreen(),
    const FavoriteScreen(),
    const ProfileScreen()
  ];
  List<String>labels=[
    AppConstants.home,
    AppConstants.bookings,
    AppConstants.favorites,
    AppConstants.myProfile
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: CurvedNavigationBar(
        index: currentIndex,

        items: [
          for (int i = 0; i < icons.length; i++) ...<Column>[
            Column(
              children: [
                SizedBox(
                  width: 56.w,
                  height: 56.h,
                  child: Icon(
                    size: 24,
                    icons[i],
                    color: currentIndex == i ? Colors.white : const Color(0xff7D848D),
                  ),
                ),
                if(currentIndex !=i )
                  Text(labels[i],
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: fontColor,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppConstants.fontFamily,
                  ),)

              ],
            )
          ]
        ],
        height: 75.h,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        color: Colors.white,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: AppStyles.primaryColor,
      ),
      body: screens[currentIndex],
    );
  }
}
