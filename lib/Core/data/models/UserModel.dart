import 'package:bhm_app/Core/domain/entities/DatosUser.dart';

class UserModel {
  final String nombre;
  final String celular;
  final String correo;
  final String password;

  //constructor
  UserModel(
      {required this.nombre,
      required this.celular,
      required this.correo,
      required this.password
  });

  factory UserModel.fromEntity(DatosUser user){
    return UserModel(nombre: user.nombre, celular: user.celular, correo: user.correo, password: user.password);
  }
}
