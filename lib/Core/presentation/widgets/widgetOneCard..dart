import 'package:bhm_app/Core/data/models/CardModel.dart';
import 'package:bhm_app/Core/data/models/UserModel.dart';
import 'package:bhm_app/Core/domain/entities/DatosCard.dart';
import 'package:bhm_app/Core/domain/entities/DatosUser.dart';
import 'package:flutter/material.dart';

Widget widgetOneCard() {
  final DatosUser user = DatosUser(
      nombre: 'Visa Empresarial',
      celular: '12120311',
      correo: 'das@gmail.com',
      password: '0000');

  final UserModel usermodel = UserModel.fromEntity(user);

  return Column(
    children: [
      Text(
        usermodel.nombre,
        style: const TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'mono'),
      ),
      Row(
        children: [
          SizedBox(
              height: 40,
              width: 40,
              child: Image.asset('images/chip.jpeg'))
        ],
      ),
    ],
  );
}

Widget widgetTwoCard() {
  final DatosCard carta = DatosCard(
    propietario: 'David Ake',
    numeroTarjeta: '4000 1234 5678 9010',
    logo: 'logo.png',
    fecha: '12/02/24',
  );
  final CardModel cardModel = CardModel.fromEntity(carta);

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(cardModel.numeroTarjeta, style: const TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'mono')),
      Text(cardModel.fecha, style: const TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'mono')),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(cardModel.propietario,
              style: const TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'mono'))
        ],
      ),
    ],
  );
}

class WidgetUltimo extends StatelessWidget {
  const WidgetUltimo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('NOMBRE DE LA EMPRESA',
            style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'mono')),
        SizedBox(
          width: 50,
          height: 30,
          child: Image.asset('images/Visa.jpeg'),
        )
      ],
    );
  }
}
