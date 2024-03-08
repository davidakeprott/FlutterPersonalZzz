import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> Lista1 = ['Transacciones', 'Opcion 1', 'Opcion 2', 'Opcion 3'];
    List<String> Lista2 = ['Servicios', 'Serv 1', 'Serv 2', 'Serv 3'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.deepPurpleAccent,
                    Colors.blue
                  ], // Tus colores para el gradiente
                ),
                shape: BoxShape.rectangle, // O BoxShape.circle
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: ClipOval(
                      child: Image.asset(
                        'images/perfil.jpeg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Claudia Flores',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                      Text(
                        'ClaudiaFlores@hotmail.com',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
            ),
            Theme(
              data: Theme.of(context).copyWith(
                dividerColor:
                    Colors.transparent, // Define el color del divisor aquí
              ),
              child: ExpansionTile(
                backgroundColor: Theme.of(context).canvasColor,
                title: Text(Lista1[0]),
                children: <Widget>[
                  // const Divider(color: Colors.white),
                  ListTile(
                    title: Text(Lista1[1]),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(Lista1[2]),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(Lista1[3]),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Theme(
              data: Theme.of(context).copyWith(
                dividerColor:
                    Colors.transparent, // Define el color del divisor aquí
              ),
              child: ExpansionTile(
                backgroundColor: Theme.of(context).canvasColor,
                title: Text(Lista2[0]),
                children: <Widget>[
                  //const Divider(color: Colors.white),
                  ListTile(
                    title: Text(Lista2[1]),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(Lista2[2]),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(Lista2[3]),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.deepPurpleAccent,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card,
                color: Colors.deepPurpleAccent,
              ),
              label: 'Credit card'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.deepPurpleAccent,
              ),
              label: 'Cuenta'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.deepPurpleAccent,
              ),
              label: 'Cofig'),
        ],
      ),
    );
  }
}
