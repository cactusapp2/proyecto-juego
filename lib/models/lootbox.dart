import 'package:proyecto_juego/models/objeto_equipable.dart';

class LootBox {
  String id;
  ObjetoEquipable recompensa;
  double costo;

  LootBox({
    required this.id,
    required this.recompensa,
    required this.costo,
  });
}
