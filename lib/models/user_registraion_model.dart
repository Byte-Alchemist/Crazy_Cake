class UserRegistraionModel {
  String? fullName;
  String? phoneNumber;
  String? password;

  UserRegistraionModel({this.fullName, this.phoneNumber, this.password});

  UserRegistraionModel.fromJson(Map<String, dynamic> json) {
    fullName = json['full_name'];
    phoneNumber = json['phone_number'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['full_name'] = fullName;
    data['phone_number'] = phoneNumber;
    data['password'] = password;
    return data;
  }
}
