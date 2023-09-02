import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tourism_app/pressentation/screens/ContactUsScreen.dart';
import 'package:tourism_app/pressentation/screens/booking_screen.dart';
import 'package:tourism_app/pressentation/screens/dashboard_screen.dart';
import 'package:tourism_app/pressentation/screens/edit_profile.dart';
import 'package:tourism_app/pressentation/screens/favourite_screen.dart';
import 'package:tourism_app/pressentation/screens/home/home.dart';
import 'package:tourism_app/pressentation/screens/profile_screen.dart';
import 'package:tourism_app/pressentation/screens/setting_screen.dart';
import 'package:tourism_app/pressentation/screens/ticket.dart';
import 'package:tourism_app/pressentation/widgets/vedio_player_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        locale: const Locale('ar'),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ar'),
          Locale('en'),
        ],
        home:   const SettingScreen(),
      ),
    );
  }
}
