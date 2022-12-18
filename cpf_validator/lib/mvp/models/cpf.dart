class CPF {
  final String value;

  CPF(this.value);

  int get length => value.length;

  bool validateCpf() {
    String cpf = value.replaceAll('.', '');
    cpf = cpf.replaceAll('-', '');
    int first = int.parse(cpf[cpf.length - 2]);
    int second = int.parse(cpf[cpf.length - 1]);

    return verifyCpfDigit(cpf.substring(0, cpf.length - 2), first) &&
        verifyCpfDigit(cpf.substring(0, cpf.length - 1), second);
  }

  bool verifyCpfDigit(String cpf, int dig) {
    cpf = cpf.replaceAll('.', '');
    cpf = cpf.replaceAll('-', '');
    int mult = 1;
    int sum = 0;
    int divider = 11;
    for (int i = cpf.length - 1; i >= 0; i--) {
      sum += int.parse(cpf[i]) * ++mult;
    }
    int res = sum % divider;
    int mod = res < 2 ? 0 : divider - res;

    return dig == mod;
  }
}
