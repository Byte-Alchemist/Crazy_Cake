class OTPVerificationModel {
  String? phoneNumber;
  String? otp;

  OTPVerificationModel({this.phoneNumber, this.otp});

  OTPVerificationModel.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phone_number'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phone_number'] = phoneNumber;
    data['otp'] = otp;
    return data;
  }
}
