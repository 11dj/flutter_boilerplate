import 'package:flutter/widgets.dart';

class Counter extends ValueNotifier<int> {
  Counter({int counter = 0}) : super(counter);

  increment() {
    value++;
  }
 
  get counter => value;
}