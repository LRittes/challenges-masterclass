import 'package:cpf_validator/mvvm/models/cpf.dart';
import 'package:flutter/material.dart';

class HomeViewmodel extends ChangeNotifier {
  String? result;
  void validateCpf(String cpfNumber) {
    CPF cpf = CPF(cpfNumber);
    if (cpf.validateCpf()) {
      result = 'CPF Válido!';
    } else {
      result = 'CPF Inválido!';
    }
    notifyListeners();
  }
}
