import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourism_app/data/model/user_info.dart';
import 'app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitState());

  static AppCubit get(context) => BlocProvider.of(context);

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser({
    required String name,
    required String email,
    required String date,
    required int number,
  }) {
    UserInformation user =
        UserInformation(name: name, email: email, date: date, number: number);
    return users
        .add(user.toMap())
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
