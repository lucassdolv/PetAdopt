class UserModel {
  String? name;
  String? email;
  String? phone;
  String? password;
  String? confirmpassword;

  UserModel({
    this.name,
    this.email,
    this.phone,
    this.password,
    this.confirmpassword,
  });

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "phone": phone,
      "password": password,
      "confirmpassword": confirmpassword,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json["name"],
      email: json["email"],
      phone: json["phone"],
      password: json["password"],
      confirmpassword: json["confirmpassword"],  // A confirmação de senha
    );
  }
}
