import 'package:proyecto_juego/models/mago.dart';

class RegistroMazmorra {
  String usuario;
  String idMago;
  String nombreMago;
  Rareza rarezaMago;
  String idMazmorra;
  String nivelMazmorra;
  DateTime fecha;
  double poderMagicoMago;
  bool victoria;
  double monedaGanada;
  double monedaAntes;
  double monedaDespues;
  double crystalGanado;
  double crystalAntes;
  double crystalDespues;
  int awakenSealGanado;
  int awakenSealAntes;
  int awakenSealDespues;

  RegistroMazmorra({
    required this.usuario,
    required this.idMago,
    required this.nombreMago,
    required this.rarezaMago,
    required this.idMazmorra,
    required this.nivelMazmorra,
    required this.fecha,
    required this.poderMagicoMago,
    required this.victoria,
    required this.monedaGanada,
    required this.monedaAntes,
    required this.monedaDespues,
    required this.crystalGanado,
    required this.crystalAntes,
    required this.crystalDespues,
    required this.awakenSealGanado,
    required this.awakenSealAntes,
    required this.awakenSealDespues,
  });
}
