import 'package:bhm_app/Core/presentation/widgets/Login.dart';
import 'package:bhm_app/Core/presentation/widgets/widgets_menu_onfi.dart';
import 'package:flutter/material.dart';

void main() => (const LoginPage());

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barraEstado(),
      body: Center(
        child: Container(
          width: 550,
          height: 450,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.all(10.0),
          decoration:  BoxDecoration(
            color: const Color.fromARGB(255, 219, 217, 219),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Login(),
        ),
      ),
    );
  }
}
