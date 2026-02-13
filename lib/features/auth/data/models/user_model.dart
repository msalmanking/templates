class UserModel {
  final String? name;
  final String? email;
  final String? token;

  UserModel({this.name, this.email, this.token});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['data']['user']['name'],
      email: json['data']['user']['email'],
      token: json['data']['access_token'],
    );
  }
}
