import 'package:flutter/material.dart';

Widget widgetOneCard() {
  return Column(
    children: [
      const Text(
        'Vista Empresarial',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      Row(
        children: [
          SizedBox(
              height: 40,
              width: 40,
              child: Image.network(
                  'https://www.shutterstock.com/image-illustration/credit-card-chip-silver-isolated-600nw-490291144.jpg')),
        ],
      ),
    ],
  );
}

Widget widgetTwoCard() {
  return const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('4000 1234 5678 9010',
          style: TextStyle(color: Colors.white, fontSize: 25)),
      Text('12/24', style: TextStyle(color: Colors.white, fontSize: 14)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('C.Arias', style: TextStyle(color: Colors.white, fontSize: 14))
        ],
      ),
    ],
  );
}

Widget widgetTreeCard() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('NOMBRE DE LA EMPRESA',
          style: TextStyle(color: Colors.white, fontSize: 14)),
      SizedBox(
        width: 50,
        height: 30,
        child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/2560px-Visa_Inc._logo.svg.png'),
      )
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
            style: TextStyle(color: Colors.white, fontSize: 14)),
        SizedBox(
          width: 50,
          height: 30,
          child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/2560px-Visa_Inc._logo.svg.png'),
        )
      ],
    );
  }
}
