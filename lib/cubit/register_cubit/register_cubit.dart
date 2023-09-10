import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourism_app/data/model/user_info.dart';
import 'package:tourism_app/data/model/user_model.dart';

import 'register_state.dart';

class AppRegisterCubit extends Cubit<AppRegisterStates> {
  AppRegisterCubit() : super(AppRegisterInitState());

  static AppRegisterCubit get(context) => BlocProvider.of(context);

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(RegisterChangePasswordVisibilityState());
  }

  void userRegister({
    required String email,
    required String password,
  }) async {
    try {
      emit(AppRegisterLoadingState());
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    emit(AppRegisterSuccessState());
    }on FirebaseAuthException catch (e){
      emit(AppRegisterErrorState(e.toString()));
      if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
      }}catch (error) {
      emit(AppRegisterErrorState(error.toString()));
    }
  }

  void userCreate({required String uId, required String email}) {
    UserModel model = UserModel(email: email, uId: uId);

    FirebaseFirestore.instance
        .collection("users")
        .doc(uId)
        .set(model.toMap())
        .then((value) {
      emit(AppCreateSuccessState());
    }).catchError((error) {
      emit(AppCreateErrorState(error.toString()));
    });
  }

  void addProfileInfo({
    required String name,
    required String uId,
    required String email,
    required String birthDate,
    required int number,
  }) {
    emit(AppPersonalInfoLoadingState());
    UserInformation userInformation = UserInformation(
        name: name, email: email, date: birthDate, number: number);

    FirebaseFirestore.instance
        .collection('userInfo')
        .doc(uId)
        .set(userInformation.toMap())
        .then((value) {
      emit(AppPersonalInfoSuccessState());
      debugPrint("Add Success ");
    }).catchError((error) {
      debugPrint(error.toString());
      emit(AppPersonalInfoErrorState(error.toString()));
      debugPrint(error.toString());
    });
  }
}
