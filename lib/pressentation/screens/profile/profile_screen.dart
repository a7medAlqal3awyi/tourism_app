import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/cubit/app_cubit/app_state.dart';
import 'package:tourism_app/pressentation/screens/bookings/booking_screen.dart';
import 'package:tourism_app/pressentation/screens/login/login_screen.dart';
import 'package:tourism_app/pressentation/screens/profile/edit_profile.dart';
import 'package:tourism_app/pressentation/widgets/custom_button.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';
import '../../../cubit/app_cubit/app_cubit.dart';
import '../../widgets/profile_app_bar.dart';
import '../../widgets/row_of_profile.dart';
import '../../widgets/vedio_player_widget.dart';
import '../settings/ContactUsScreen.dart';
import '../settings/setting_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
              body: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                          height: 150.h,
                          width: double.infinity,
                          child: const VideoApp()),
                      const ProfileAppBar(),
                      Positioned(
                        top: 110.h,
                        left: 164.w,
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 40,
                          child: CircleAvatar(
                            radius: 36,
                            backgroundImage: AssetImage(
                                'assets/images/ahmed.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    AppConstants.ahmedAlqal3awyi,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: AppConstants.fontFamily,
                        fontSize: 24.sp),
                  ),
                  Text(
                    AppConstants.ahmedEmail,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: AppConstants.fontFamily,
                        fontSize: 14.sp,
                        color: const Color(0xff7D848D)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  RowOfProfile(
                    onTap: () {
                      context.push(const EditProfileScreen());
                    },
                    text: AppConstants.editAccount,
                    iconPath: 'assets/images/Profile.svg',
                  ),
                  RowOfProfile(
                    onTap: () {
                      context.push(const BookingScreen());
                    },
                    text: AppConstants.previousTrips,
                    iconPath: 'assets/images/Plane.svg',
                  ),
                  RowOfProfile(
                    onTap: () {
                      context.push(const ContactUsScreen());
                    },
                    text: AppConstants.connectUs,
                    iconPath: 'assets/images/Privacy.svg',
                  ),
                  RowOfProfile(
                    onTap: () {
                      AppCubit.get(context).addUser(
                        name: "Ahmed",
                        email: "ahmed@gmail.com",
                        date: "85d/5",
                        number: 0215425,
                      );
                    },
                    text: AppConstants.privacyPolicy,
                    iconPath: 'assets/images/EmailIcon.svg',
                  ),
                  RowOfProfile(
                    onTap: () {
                      context.push(const SettingScreen());
                    },
                    text: AppConstants.settings,
                    iconPath: 'assets/images/Setting.svg',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                      onTap: () async {
                        GoogleSignIn googleSignIn = GoogleSignIn();
                        googleSignIn.disconnect();
                        await FirebaseAuth.instance.signOut();
                        // ignore: use_build_context_synchronously
                        context.pushAndRemove(const LoginScreen());
                      },
                      imagePath: 'assets/images/Logout.svg',
                      color: Colors.transparent,
                      text: AppConstants.signOut,
                      textColor: AppStyles.redColor)
                ],
              ));
        },
      ),
    );
  }
}
