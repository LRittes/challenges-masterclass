import 'package:cpf_validator/mvp/models/cpf.dart';

abstract class HomePageView {
  void update();
}

class Presenter {
  late HomePageView _pageView;
  String? result;

  Presenter(HomePageView pageView) {
    _pageView = pageView;
  }

  void validateCpf(String cpfNumber) {
    CPF cpf = CPF(cpfNumber);
    if (cpf.validateCpf()) {
      result = 'CPF Válido!';
    } else {
      result = 'CPF Inválido!';
    }
    _pageView.update();
  }
}
