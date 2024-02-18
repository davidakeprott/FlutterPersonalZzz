import 'package:bhm_app/Core/presentation/widgets/widgetOneCard..dart';
import 'package:flutter/material.dart';

void main ()=>((const TarjetaCredito()));

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
            color:Color.fromARGB(255, 18, 97, 90),
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Column(
            children: [
              widgetOneCard(),
              widgetTwoCard(),
              const WidgetUltimo()
            ],
          ),
        ),
      ),
    );
  }
}