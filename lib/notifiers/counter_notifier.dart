import 'package:flutter/foundation.dart';

class CounterNotifier extends ValueNotifier<int> {
  CounterNotifier(this._counterValue) : super(_counterValue);

  int _counterValue;

  @override
  int get value => _counterValue;

  void increment() {
    _counterValue++;
    notifyListeners();
  }
}
