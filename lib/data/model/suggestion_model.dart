class SuggestionModel {
  String image;
  String title;
  String name;
  String location;
  double rate;

  SuggestionModel(
      {required this.name,
        required this.rate,
      required this.image,
      required this.title,
      required this.location});
}
