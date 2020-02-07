import 'package:flutter/widgets.dart';

class User with ChangeNotifier {
  String name = 'YYYY';

  void update(String nv) {
    name = nv;
    notifyListeners();
  }
}
