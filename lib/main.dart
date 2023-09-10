import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tourism_app/core/cache_helper.dart';
import 'package:tourism_app/pressentation/screens/dashboard/dashboard_screen.dart';
import 'package:tourism_app/pressentation/screens/on_boarding/splash_screen.dart';

import 'core/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp();

  await CacheHelper.init();
 // bool onBoarding=CacheHelper.getData(key: 'onBoarding');
   var uId = CacheHelper.getData(key: "uId") ;
  Widget widget;
  if(uId !=null)
  {
    widget=const DashboardScreen();
  }else{
    widget=const SplashScreen();
  }

  runApp( MyApp(
    startWidget: widget,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key,required this.startWidget});
  final Widget startWidget;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('==============   User is currently signed out!');
      } else {
        print('================ User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        color: Colors.white,
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
        home: FirebaseAuth.instance.currentUser==null ? const SplashScreen(): DashboardScreen(),
        //startWidget,
      ),
    );
  }
}
