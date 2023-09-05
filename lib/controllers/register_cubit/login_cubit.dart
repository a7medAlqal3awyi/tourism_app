import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';
class AppRegisterCubit extends Cubit<AppRegisterStates>{
  AppRegisterCubit ():super(AppRegisterInitState());
  static AppRegisterCubit get(context)=> BlocProvider.of(context);


IconData suffix=Icons.visibility_outlined;
bool isPassword=true;
  void changePasswordVisibility(){
    isPassword=!isPassword;
    suffix =isPassword? Icons.visibility_outlined: Icons.visibility_off_outlined;
    emit(RegisterChangePasswordVisibilityState());
  }
  void userRegister({
    required String email,
    required String password,
})
  {
    emit(AppRegisterLoadingState());

  }

}