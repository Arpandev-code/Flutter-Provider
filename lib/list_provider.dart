import 'package:flutter/material.dart';

class NumberListProvider extends ChangeNotifier {
  List<int> list = [1, 2, 3, 4];
  void add() {
    int lastdata = list.last;
    list.add(lastdata + 1);
    notifyListeners();
  }
}
