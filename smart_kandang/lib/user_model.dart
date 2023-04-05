class UserModel {
  String? user;
  String? email;
  String? nt;
  String? usia;

  UserModel();

  UserModel.fromJson(Map<String, dynamic> json) {
    user = json['username'];
    email = json['email'];
    nt = json['nomor telepon'];
    usia = json['usia'];
  }
}
