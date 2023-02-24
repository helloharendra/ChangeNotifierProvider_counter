import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  CounterProvider();

  getCounter() => _counter;
  setCounter(int counter) => _counter = counter;

  void increment() {
    if (_counter >= 10) {
      Text('value id greater than 10');
    } else {
      _counter++;
      notifyListeners();
    }
  }

  void decrement() {
    if (_counter <= 0) {
      Text('value id greater than 10');
    } else {
      _counter--;
      notifyListeners();
    }
  }
}
