import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int value;
  CounterProvider ({
    this.value = 0,
  });

  void incrementValue (){
    value ++;
    notifyListeners();
  }

  void decementValue() {
    value--;
    notifyListeners();
  }
}