class UserInformation{
  String name;
  String email;
  String  date;
  int number;

  UserInformation({required this.name, required this.email, required this.date, required this.number});

  Map<String, dynamic> toMap(){
    return {
      'name' : name,
      'email' : email,
      'date' : date,
      'number' : number,
    };
  }
}