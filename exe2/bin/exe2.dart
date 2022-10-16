void main(List<String> arguments) {
  print(regraDeTres(grupo21: 4, grupo11: 4, grupo22: 2));
}

double regraDeTres({int? grupo1, int? grupo11, int? grupo21, int? grupo22}) {
  if (grupo1 == null) return (grupo21! * grupo11!) / grupo22!;
  if (grupo21 == null) return (grupo1 * grupo22!) / grupo11!;
  if (grupo11 == null) return (grupo1 * grupo22!) / grupo21;
  return (grupo21 * grupo11) / grupo1;
}
