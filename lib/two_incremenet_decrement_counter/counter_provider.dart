import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  CounterProvider({this.value = 0});

  int value;

  void incrementCounter() {
    value++;
    notifyListeners();
  }

  void decrementCounter() {
    value--;
    notifyListeners();
  }
}
