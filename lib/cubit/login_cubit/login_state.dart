abstract class AppLoginStates{}
class AppLoginInitState extends AppLoginStates{}
class AppLoginLoadingState extends AppLoginStates{}
class AppLoginSuccessState extends AppLoginStates{
  final String uId;

  AppLoginSuccessState(this.uId);
}
class AppLoginErrorState extends AppLoginStates{
  final String error;

  AppLoginErrorState(this.error);

}

class LoginChangePasswordVisibilityState extends AppLoginStates{}


class AppLoginWithGoogleLoadingState extends AppLoginStates{}
class AppLoginWithGoogleSuccessState extends AppLoginStates {}
class AppLoginWithGoogleErrorState extends AppLoginStates{
  final String error;

  AppLoginWithGoogleErrorState(this.error);

}
