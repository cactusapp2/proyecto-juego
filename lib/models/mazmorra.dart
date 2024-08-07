class Mazmorra {
  String id;
  String nombre;
  List<Nivel> niveles;

  Mazmorra({
    required this.id,
    required this.nombre,
    required this.niveles,
  });
}

class Nivel {
  String id;
  String nombre;
  double poderMagico;

  Nivel({
    required this.id,
    required this.nombre,
    required this.poderMagico,
  });
}
