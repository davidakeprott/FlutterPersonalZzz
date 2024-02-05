import 'package:bhm_app/Core/presentation/widgets/widgets_ajustes_perfil.dart';
import 'package:bhm_app/Core/presentation/widgets/widgets_menu_onfi.dart';
import 'package:flutter/material.dart';

void main()=>(const Ajustesperfil());

class Ajustesperfil extends StatelessWidget {
  const Ajustesperfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barraEstado(),
      body: const Estructura(),
    );
  }
}