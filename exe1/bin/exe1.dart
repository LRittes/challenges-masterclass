void main(List<String> arguments) {
  print(fibonacci(3));
}

List<int> fibonacci(int nTermos) {
  if (nTermos == 1) return [1];
  if (nTermos == 2) {
    return [1, 1];
  }
  var aux = fibonacci(nTermos - 1);
  return [
    ...aux,
    if (aux.isNotEmpty) aux[aux.length - 1] + aux[aux.length - 2]
  ];
}
