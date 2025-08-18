import 'package:flutter/material.dart';
import 'package:e_commerce_app/models/card_model.dart';

class CardController extends ChangeNotifier {
  final List<CardModel> cardList = [];

  void addToCard(CardModel item) {
    cardList.add(item);
    notifyListeners();
  }

  void removeFromCard(CardModel item) {
    cardList.removeWhere((e) => e.name == item.name);
    notifyListeners();
  }

  void clearCard() {
    cardList.clear();
  }
}
