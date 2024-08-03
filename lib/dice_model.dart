import 'dart:math';
import 'package:flutter/material.dart';

class DiceModel extends ChangeNotifier {
  String _activeDice1 = "assets/d1.svg";
  String _activeDice2 = "assets/d1.svg";
  int _random1 = 1;
  int _random2 = 1;
  int _result = 2;

  String get activeDice1 => _activeDice1;
  String get activeDice2 => _activeDice2;
  int get result => _result;

  void rollDice() {
    _random1 = Random().nextInt(6) + 1;
    _random2 = Random().nextInt(6) + 1;
    _result = _random1 + _random2;
    _activeDice1 = "assets/d$_random1.svg";
    _activeDice2 = "assets/d$_random2.svg";
    notifyListeners();
  }
}
