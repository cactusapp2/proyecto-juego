import 'package:proyecto_juego/models/objeto_equipable.dart';

class Mercader {
  List<ObjetoEnVenta> objetosEnVenta;

  Mercader({
    required this.objetosEnVenta,
  });
}

class ObjetoEnVenta {
  ObjetoEquipable objeto;
  double costoMagicGold;
  double costoCrystal;

  ObjetoEnVenta({
    required this.objeto,
    required this.costoMagicGold,
    required this.costoCrystal,
  });
}
