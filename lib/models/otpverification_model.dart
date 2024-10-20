class OTPVerificationModel {
  String? phoneNumber;
  String? otp;

  OTPVerificationModel({this.phoneNumber, this.otp});

  OTPVerificationModel.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phone_number'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phone_number'] = this.phoneNumber;
    data['otp'] = this.otp;
    return data;
  }
}
