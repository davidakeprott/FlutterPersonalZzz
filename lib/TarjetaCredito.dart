import 'package:bhm_app/Core/domain/entities/DatosCard.dart';
import 'package:bhm_app/Core/domain/entities/DatosUser.dart';
import 'package:bhm_app/Core/presentation/widgets/widgetOneCard..dart';
import 'package:flutter/material.dart';

void main() => ((const TarjetaCredito()));

class TarjetaCredito extends StatelessWidget {
  const TarjetaCredito({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Tarjeta(),
    );
  }
}

class Tarjeta extends StatelessWidget {
  const Tarjeta({super.key});

  @override
  Widget build(BuildContext context) {
    final DatosUser user = DatosUser(
        nombre: 'NOMBRE DE LA EMPRESA',
        celular: '12120311',
        correo: 'das@gmail.com',
        password: '0000');
    final DatosCard carta = DatosCard(
      propietario: 'David R. AKE',
      numeroTarjeta: '4000 1234 5678 9010',
      logo: 'logo.png',
      fecha: '12/02/24',
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('TARGETA DE CREDITO'),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 200,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10.5),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 13, 94, 187),
              borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: [
              widgetOneCard(),
              widgetTwoCard(carta),
              WidgetUltimo(datos: user)
            ],
          ),
        ),
      ),
    );
  }
}
