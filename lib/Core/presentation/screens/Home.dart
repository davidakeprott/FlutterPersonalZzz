import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      drawer: const NavigationDrawer(children: [
        Text('Transferencia'), 
        Text('Cosas extras')
      ]),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.deepPurpleAccent,), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.credit_card, color: Colors.deepPurpleAccent,), label: 'Credit card'),
        BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.deepPurpleAccent,), label: 'Cuenta'),
        BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.deepPurpleAccent,), label: 'Cofig'),
      ],),
    );
  }
}