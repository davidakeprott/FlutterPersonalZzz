import 'package:bhm_app/Core/domain/entities/DatosCard.dart';

class CardModel {
  final String propietario;
  final String numeroTarjeta;
  final String logo;
  final String fecha;
  final int? ccv;

  CardModel(
      {required this.propietario,
      required this.numeroTarjeta,
      required this.logo,
      required this.fecha,
       this.ccv
  });

  factory CardModel.fromEntity(DatosCard datoscard){
    return CardModel(propietario: datoscard.propietario, numeroTarjeta: datoscard.numeroTarjeta, logo: datoscard.logo, fecha: datoscard.fecha, ccv: 0);
  }

  void get(){}
}
