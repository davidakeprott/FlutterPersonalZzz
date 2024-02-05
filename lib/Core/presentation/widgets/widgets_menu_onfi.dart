import 'package:flutter/material.dart';

Widget perfil() {
  return Container(
    //margin: const EdgeInsets.all(1),
    color: const Color(0xFF16697A),
    padding: const EdgeInsets.all(22.0),
    height: 160,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Icon(
                  Icons.circle_outlined,
                  size: 35.0,
                  color: Colors.white,
                ),
                Icon(
                  Icons.close_rounded,
                  size: 25.0,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                width: 80,
                height: 80,
                child: ClipOval(
                  child: Image.network(
                    'https://tecolotito.elsiglodedurango.com.mx/cdn-cgi/image/format=auto,width=1024/i/2023/04/1166288.jpeg',
                    fit: BoxFit.cover,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      'Claudia Flores',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    width: 190,
                    alignment: Alignment.center,
                    child: const Text('ClaudiaFlores@hotmail.com',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Widget opciones() {
  return Container(
    color: Colors.white,
    child: Column(
      children: [
        Container(
          height: 70,
          decoration: BoxDecoration(
              border: Border.all(
            color: const Color.fromARGB(255, 167, 173, 171),
            width: 0.5,
          )),
          child: ayuda(),
        ),
        Container(
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(
              color: const Color.fromARGB(255, 167, 173, 171),
              width: 0.5,
            )),
            child: seguridad()),
        Container(
          height: 70,
          decoration: BoxDecoration(
              border: Border.all(
            color: const Color.fromARGB(255, 167, 173, 171),
            width: 0.5,
          )),
          child: miperfil(),
        ),
      ],
    ),
  );
}

Widget fin() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () => {},
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return const Color(0xFF82C0CC); // El color del efecto splash
                  }
                  return null; // Dejará el efecto de splash predeterminado si no hay una presión
                },
              ),
            ),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  color: const Color(0xFF16697A),
                  borderRadius: BorderRadius.circular(10.0)),
              padding: const EdgeInsets.all(5.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  Text(
                    ' CERRAR SESION',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )),
      ],
    ),
  );
}

Widget ayuda() {
  return TextButton(
      onPressed: () => {},
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return const Color(0xFF82C0CC); // El color del efecto splash
            }
            return null; // Dejará el efecto de splash predeterminado si no hay una presión
          },
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(children: [
                Container(
                  padding: const EdgeInsets.all(2.0),
                  child: const Icon(
                    Icons.help_outline_rounded,
                    size: 30.0,
                    color: Color(0xFF16697A),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(2.0),
                  child: const Text(
                    'Ayuda',
                    style: TextStyle(fontSize: 15, color: Color(0xFFF25C05)),
                  ),
                )
              ]),
            ],
          ),
          const Icon(
            Icons.chevron_right,
            size: 50,
            color: Color(0xFF16697A),
          )
        ],
      ));
}

Widget seguridad() {
  return TextButton(
      onPressed: () => {},
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return const Color(0xFF82C0CC); // El color del efecto splash
            }
            return null; // Dejará el efecto de splash predeterminado si no hay una presión
          },
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(children: [
                Container(
                  padding: const EdgeInsets.all(2.0),
                  child: const Icon(
                    Icons.security_rounded,
                    size: 30.0,
                    color: Color(0xFF16697A),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(2.0),
                    child: const Text(
                      'Seguridad',
                      style: TextStyle(fontSize: 15, color: Color(0xFFF25C05)),
                    ))
              ]),
            ],
          ),
          const Icon(
            Icons.chevron_right,
            size: 50,
            color: Color(0xFF16697A),
          )
        ],
      ));
}

Widget miperfil() {
  return TextButton(
      onPressed: () => {},
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return const Color(0xFF82C0CC); // El color del efecto splash
            }
            return null; // Dejará el efecto de splash predeterminado si no hay una presión
          },
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(children: [
                Container(
                  padding: const EdgeInsets.all(2.0),
                  child: const Icon(
                    Icons.person_outlined,
                    size: 30.0,
                    color: Color(0xFF16697A),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(2.0),
                    child: const Text(
                      'Perfil',
                      style: TextStyle(fontSize: 15, color: Color(0xFFF25C05)),
                    ))
              ]),
            ],
          ),
          const Icon(
            Icons.chevron_right,
            size: 50,
            color: Color(0xFF16697A),
          )
        ],
      ));
}

PreferredSizeWidget barraEstado() {
  return PreferredSize(
    preferredSize:
        const Size.fromHeight(50.0), // Altura personalizada para el AppBar
    child: AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.signal_cellular_alt, size: 20),
              Icon(Icons.wifi, size: 20),
              Text('9:41 AM', style: TextStyle(fontSize: 16)),
            ],
          ),
          Row(
            children: <Widget>[
              Text('100%', style: TextStyle(fontSize: 16)),
              Icon(Icons.battery_full, size: 20),
            ],
          ),
        ],
      ),
      centerTitle: true,
    ),
  );
}
