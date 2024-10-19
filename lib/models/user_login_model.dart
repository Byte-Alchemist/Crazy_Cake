class UserLoginModel {
  String? phoneNumber;
  String? password;

  UserLoginModel({this.phoneNumber, this.password});

  UserLoginModel.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phone_number'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phone_number'] = phoneNumber;
    data['password'] = password;
    return data;
  }
}
