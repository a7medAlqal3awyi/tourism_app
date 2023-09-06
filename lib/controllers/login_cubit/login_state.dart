abstract class AppLoginStates{}
class AppLoginInitState extends AppLoginStates{}
class AppLoginLoadingState extends AppLoginStates{}
class AppLoginSuccessState extends AppLoginStates{}
class AppLoginErrorState extends AppLoginStates{
  final String error;

  AppLoginErrorState(this.error);

}
class LoginChangePasswordVisibilityState extends AppLoginStates{}