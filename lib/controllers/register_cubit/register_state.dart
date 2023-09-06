abstract class AppRegisterStates{}
class AppRegisterInitState extends AppRegisterStates{}
class AppRegisterLoadingState extends AppRegisterStates{}
class AppRegisterSuccessState extends AppRegisterStates{}
class AppRegisterErrorState extends AppRegisterStates{
  final String error;

  AppRegisterErrorState(this.error);
}
class AppCreateSuccessState extends AppRegisterStates{}
class AppCreateErrorState extends AppRegisterStates{
  final String error;

  AppCreateErrorState(this.error);
}
class RegisterChangePasswordVisibilityState extends AppRegisterStates{}