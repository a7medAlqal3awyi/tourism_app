import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/controllers/register_cubit/register_cubit.dart';
import 'package:tourism_app/controllers/register_cubit/register_state.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/screens/login_screen.dart';
import 'package:tourism_app/pressentation/screens/profile/presonal_details_screen.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/pressentation/widgets/custom_form_field.dart';
import 'package:tourism_app/pressentation/widgets/row_of_G_G_A.dart';
import 'package:tourism_app/pressentation/widgets/screen_divider.dart';
import 'package:tourism_app/pressentation/widgets/text_and_text_button.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../widgets/check_with_rich_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => AppRegisterCubit(),
      child: BlocConsumer<AppRegisterCubit, AppRegisterStates>(
        listener: (context, state) {
          if(state is AppCreateSuccessState){
            context.push(const PersonalDetailsScreen());
          }
        },
        builder: (context, state) {
          var cubit = AppRegisterCubit.get(context);
          return Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(
                      width: 190.w,
                      height: 90.h,
                      child: Text(
                        textAlign: TextAlign.center,
                        AppConstants.createNewAccount,
                        style: TextStyle(
                          fontFamily: AppConstants.fontFamily,
                          fontWeight: FontWeight.w700,
                          fontSize: 28.sp,
                        ),
                      ),
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
                      // suffixPressed: ,
                      type: TextInputType.visiblePassword,
                      controller: passwordController,
                      label: AppConstants.password,
                      prefixIconPath: 'assets/images/LockIcon.svg',
                      suffix: cubit.suffix,
                      suffixPressed: () {
                        cubit.changePasswordVisibility();
                      },
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
                    SizedBox(
                      height: 10.h,
                    ),
                    const CheckBoxWithRichText(),
                    SizedBox(
                      height: 10.h,
                    ),
                    ConditionalBuilder(
                      condition: state is! AppRegisterLoadingState,
                      builder: (BuildContext context) =>
                          CustomButtonWithOnlyText(
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  cubit.userRegister(
                                      email: emailController.text,
                                      password: passwordController.text,
                                      name: nameController.text,
                                      phone: phoneController.text);
                                }
                              },
                              color: AppStyles.primaryColor,
                              text: AppConstants.createAccount,
                              textColor: Colors.white),
                      fallback: (BuildContext context) =>
                          Center(
                            child: CircularProgressIndicator(
                              color: AppStyles.primaryColor,
                            ),
                          ),
                    ),
                    ScreenDivider(dividerText: AppConstants.orCompleteUsing),
                    const RowOfGFA(),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextAndTextButton(
                      txt: AppConstants.alreadyHaveAccount,
                      txtButton: AppConstants.signIn,
                      onPressed: () {
                        context.push(const LoginScreen());
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
