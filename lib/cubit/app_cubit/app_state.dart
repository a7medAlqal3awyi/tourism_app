
abstract class AppStates{}
class AppInitState extends AppStates{}
class SuggestionLoadingState extends AppStates{}
class SuggestionSuccessState extends AppStates{
}
class SuggestionErrorState extends AppStates{
  final String error;

  SuggestionErrorState(this.error);

}


