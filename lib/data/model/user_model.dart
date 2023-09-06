class UserModel {
  String email;
  String uId;

  UserModel({
    required this.email,
    required this.uId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        email: json['email'],
        uId: json['uId'],
      );

    Map <String, dynamic>  toMap()
    {
      return {
        'email':email,
        'uId': uId,
      };
    }
}
