import 'package:flutter/material.dart';

class PaymentOption with ChangeNotifier {
  String _selectedPayment = 'cash on delevery';
  String get selectedPayment => _selectedPayment;

  get selectPayment => _selectedPayment;
  void selectePayment(String payment) {
    _selectedPayment = payment;
    notifyListeners();
  }
}
