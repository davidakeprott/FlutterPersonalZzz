import 'package:bhm_app/Core/presentation/screens/menu_confi.dart';
import 'package:bhm_app/tarjetaCredito.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Btn(),
    );
  }
}

class Btn extends StatelessWidget {
  const Btn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PRINCIPAL'),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TarjetaCredito()));
                },
                child: const Text('Ver Tarjeta')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Menu()));
                },
                child: const Text('Prototipo Menu COnfiguraciones')),
          ],
        ),
      ),
    );
  }
}

