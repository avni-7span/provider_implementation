import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  CounterProvider({this.value = 0});

  int value;

  void incrementCounter() async {
    value++;
    notifyListeners();
  }

  void decrementCounter() async {
    value--;
    notifyListeners();
  }
}
