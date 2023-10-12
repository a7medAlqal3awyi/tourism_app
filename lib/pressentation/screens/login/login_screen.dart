import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/cache_helper.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/screens/dashboard/dashboard_screen.dart';
import 'package:tourism_app/pressentation/screens/register/register_screen.dart';
import 'package:tourism_app/pressentation/widgets/check_box.dart';
import 'package:tourism_app/pressentation/widgets/screen_divider.dart';
import 'package:tourism_app/pressentation/widgets/show_toast.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../../cubit/login_cubit/login_cubit.dart';
import '../../../cubit/login_cubit/login_state.dart';
import '../../widgets/custom_button_with_only_text.dart';
import '../../widgets/custom_form_field.dart';
import '../../widgets/row_of_G_G_A.dart';
import '../../widgets/text_and_text_button.dart';
import '../forget_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppLoginCubit(),
      child: BlocConsumer<AppLoginCubit, AppLoginStates>(
        listener: (context, state) {
          if (state is AppLoginErrorState) {
            showToast(text: state.error, state: ToastStates.ERROR);
          } else if (state is AppLoginSuccessState) {
            CacheHelper.saveData(key: 'token', value: state.uId);
            context.pushAndRemove(const DashboardScreen());
          }
        },
        builder: (context, state) {
          var cubit = AppLoginCubit.get(context);

          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Center(
                        child: SizedBox(
                          width: 183.w,
                          height: 72.h,
                          child: Text(
                            AppConstants.signInToYourAccount,
                            style: TextStyle(
                                fontSize: 23.5.sp,
                                fontFamily: AppConstants.fontFamily,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomFormField(
                        type: TextInputType.emailAddress,
                        controller: emailController,
                        label: AppConstants.email,
                        prefixIconPath: 'assets/images/EmailIcon.svg',
                        suffixIconPath: "",
                        validate: (value) {
                          if (value
                              .toString()
                              .isEmpty) {
                            return AppConstants.emailValidation;
                          } else {
                            return null;
                          }
                        },
                      ),
                      CustomFormField(
                        isPassword: cubit.isPassword,
                        type: TextInputType.visiblePassword,
                        controller: passwordController,
                        label: AppConstants.password,
                        prefixIconPath: 'assets/images/LockIcon.svg',
                        suffixIconPath: 'assets/images/Hide.svg',
                        suffixPressed: () {
                          cubit.changePasswordVisibility();
                        },
                        suffix: cubit.suffix,
                        validate: (value) {
                          if (value
                              .toString()
                              .isEmpty) {
                            return AppConstants.passwordValidation;
                          } else {
                            return null;
                          }
                        },
                      ),
                      CustomCheckBox(title: AppConstants.rememberMe),
                      ConditionalBuilder(
                          condition: state is! AppLoginLoadingState,
                          builder: (context) =>
                              CustomButtonWithOnlyText(
                                onTap: () {
                                  if (formKey.currentState!.validate()) {
                                    cubit.userLogin(context: context,
                                        email: emailController.text,
                                        password: passwordController.text);
                                  }
                                },
                                color: AppStyles.primaryColor,
                                text: AppConstants.signIn,
                                textColor: Colors.white,
                              ),
                          fallback: (context) =>
                              Center(
                                child: CircularProgressIndicator(
                                  color: AppStyles.primaryColor,
                                ),
                              )),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextButton(
                        onPressed: () {
                          if (emailController.text == "") {
                            showToast(text: 'الرجاء كتابة البريد الالكتروني',
                                state: ToastStates.ERROR,);
                          } else {
                            context.push(
                                ForgetPasswordScreen(
                                  email: emailController.text,
                                ));
                          }
                        },
                        child: Text(
                          AppConstants.doYouForgetPassword,
                          style: TextStyle(
                            fontFamily: AppConstants.fontFamily,
                            color: AppStyles.primaryColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      ScreenDivider(dividerText: AppConstants.orCompleteUsing),
                      const RowOfGFA(),
                      SizedBox(
                        height: 32.h,
                      ),
                      TextAndTextButton(
                        onPressed: () {
                          context.push(const RegisterScreen());
                        },
                        txt: AppConstants.donotHaveAccount,
                        txtButton: AppConstants.createAccount,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
