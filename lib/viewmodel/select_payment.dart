import 'package:flutter/material.dart';

class SelectPayment with ChangeNotifier {
  String _isSelected = '';
  String get selectedIndex => _isSelected;
  void selectText(String method) {
    _isSelected = method;
    notifyListeners();
  }
}
