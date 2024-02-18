import 'package:bhm_app/Core/domain/entities/User.dart';

class UserModel {
  /*Atributos*/
  final String name;
  final String telephone;
  final String email;
  final String password;

  //constructor
  UserModel(
      {required this.name,
      required this.telephone,
      required this.email,
      required this.password});

  factory UserModel.fromEntity(User user) {
    return UserModel(
        name: user.name,
        telephone: user.telephone,
        email: user.email,
        password: user.password);
  }


  void get(){
    
  }
}
