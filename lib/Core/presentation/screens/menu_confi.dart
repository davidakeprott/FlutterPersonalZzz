import 'package:bhm_app/Core/presentation/widgets/widgets_menu_onfi.dart';
import 'package:flutter/material.dart';

void main()=>(const Menu());


class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barraEstado(),
      body: Column(
        children: [
          perfil(),
          opciones(),
          Expanded(child: fin())
          
        ],
      ),
    );
  }
}