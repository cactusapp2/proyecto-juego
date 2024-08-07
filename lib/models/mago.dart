import 'package:proyecto_juego/models/objeto_equipable.dart';

class Mago {
  String id;
  String nombre;
  Rareza rareza;
  double poderMagico;
  double recompensa;
  bool awaken;
  DateTime cooldownHasta;
  List<ObjetoEquipable> objetosEquipados;

  Mago({
    required this.id,
    required this.nombre,
    required this.rareza,
    required this.poderMagico,
    required this.recompensa,
    this.awaken = false,
    required this.cooldownHasta,
    this.objetosEquipados = const [],
  });
}

enum Rareza { Common, Uncommon, Rare, Epic }
