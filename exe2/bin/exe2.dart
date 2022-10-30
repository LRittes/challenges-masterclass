void main(List<String> arguments) {
  print(regraDeTres(grupo1: 1000, grupo11: 100, grupo21: 680));
}

double regraDeTres({int? grupo1, int? grupo11, int? grupo21, int? grupo22}) {
  if (grupo1 == null) return (grupo21! * grupo11!) / grupo22!;
  if (grupo21 == null) return (grupo1 * grupo22!) / grupo11!;
  if (grupo11 == null) return (grupo1 * grupo22!) / grupo21;
  return (grupo21 * grupo11) / grupo1;
}
