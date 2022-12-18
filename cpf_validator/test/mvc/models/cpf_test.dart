import 'package:cpf_validator/mvc/models/cpf.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  CPF cpf = CPF("111.444.777-35");
  test('Should return false for first verify digit wrong', () {
    expect(cpf.verifyCpfDigit(cpf.value.substring(0, cpf.length - 2), 4),
        equals(false));
  });

  test('Should return true for first verify digit correct', () {
    expect(cpf.verifyCpfDigit(cpf.value.substring(0, cpf.length - 2), 3),
        equals(true));
  });

  test('Should return false for second verify digit wrong', () {
    expect(cpf.verifyCpfDigit(cpf.value.substring(0, cpf.length - 1), 9),
        equals(false));
  });

  test('Should return true for second verify digit correct', () {
    expect(cpf.verifyCpfDigit(cpf.value.substring(0, cpf.length - 1), 5),
        equals(true));
  });

  test('Should return false for invalite cpf', () {
    CPF cpf2 = CPF('${cpf.value.substring(0, cpf.length - 2)}7');
    expect(cpf2.validateCpf(), equals(false));
  });

  test('Should return true for velidate cpf', () {
    expect(cpf.validateCpf(), equals(true));
  });
}
