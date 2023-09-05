import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourism_app/controllers/login_cubit/login_state.dart';
class AppLoginCubit extends Cubit<AppLoginStates>{
  AppLoginCubit ():super(AppLoginInitState());
  static AppLoginCubit get(context)=> BlocProvider.of(context);


IconData suffix=Icons.visibility_outlined;
bool isPassword=true;
  void changePasswordVisibility(){
    isPassword=!isPassword;
    suffix =isPassword? Icons.visibility_outlined: Icons.visibility_off_outlined;
    emit(LoginChangePasswordVisibilityState());
  }
  void userLogin({
    required String email,
    required String password,
})
  {
    emit(AppLoginLoadingState());

  }

}