

import 'package:bhm_app/Core/domain/entities/Card.dart';

class CardModel {
  final String cardOwner;
  final String cardNumber;
  final String logo;
  final String cardDate;
  final int ccv;

  CardModel(
      {required this.cardOwner,
      required this.cardNumber,
      required this.logo,
      required this.cardDate,
      required this.ccv});

  factory CardModel.fromEntity(Cartita cartita) {
    return CardModel(
        cardOwner: cartita.cardOwner,
        cardNumber: cartita.cardNumber,
        logo: cartita.logo,
        cardDate: cartita.cardDate,
        ccv: 0);
  }

  void get() {}
}
