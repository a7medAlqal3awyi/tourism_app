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
Map<String, dynamic>toMap(){
  return {
    'name': name,
    'rate': rate,
    'image': image,
    'title': title,
    'location': location,
  };
}
}
