import 'package:cpf_validator/mvc/models/cpf.dart';
import 'package:flutter/material.dart';

class HomeController {
  Widget validateCpf(String cpfNumber) {
    CPF cpf = CPF(cpfNumber);
    if (cpf.validateCpf()) {
      return const Text("CPF válido!");
    }

    return const Text("CPF inválido!");
  }
}
