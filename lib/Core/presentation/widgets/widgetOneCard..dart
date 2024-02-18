import 'package:bhm_app/Core/data/models/UserModel.dart';
import 'package:bhm_app/Core/data/models/cardModel.dart';
import 'package:bhm_app/Core/domain/entities/User.dart';
//import 'package:bhm_app/Core/domain/entities/card.dart';
import 'package:bhm_app/Core/domain/entities/Card.dart';

import 'package:flutter/material.dart';

Widget widgetOneCard() {
  final User user = User(
      name: 'DAVID AKE',
      telephone: '12120311',
      email: 'das@gmail.com',
      password: '0000',);


  final UserModel usermodel= UserModel.fromEntity(user);

  return Column(
    children: [
       Text(usermodel.name, style: const TextStyle(fontSize: 20, color: Colors.white),),
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

  final Cartita carta= Cartita(
    cardOwner: 'C.Alias',
    cardNumber:'123322123',
    logo:'logo.png',
    cardDate:'12/02/24',
  );

  final CardModel cardModel = CardModel.fromEntity(carta);
  return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(cardModel.cardNumber,
          style: TextStyle(color: Colors.white, fontSize: 25)),
     const  Text('12/24', style: TextStyle(color: Colors.white, fontSize: 14)),
     const  Row(
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
