import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/screens/dashboard/dashboard_screen.dart';
import 'package:tourism_app/utils/app_constants.dart';

import 'login_state.dart';

class AppLoginCubit extends Cubit<AppLoginStates> {
  AppLoginCubit() : super(AppLoginInitState());

  static AppLoginCubit get(context) => BlocProvider.of(context);

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(LoginChangePasswordVisibilityState());
  }

  void userLogin({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      emit(AppLoginLoadingState());
      FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(AppLoginSuccessState(uId));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (error) {
      emit(AppLoginErrorState(error.toString()));
    }
  }

  Future signInWithGoogle(BuildContext context) async {
    try {
      emit(AppLoginWithGoogleLoadingState());
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return ;
      }
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      emit(AppLoginWithGoogleSuccessState());
      await FirebaseAuth.instance.signInWithCredential(credential);
      // ignore: use_build_context_synchronously
      context.pushAndRemove(const DashboardScreen());
    } on FirebaseAuthException catch (error) {
      emit(AppLoginWithGoogleErrorState(error.message.toString()));
     debugPrint(error.message.toString());
    }
  }

}
