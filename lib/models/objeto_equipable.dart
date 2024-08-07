class ObjetoEquipable {
  String id;
  String nombre;
  TipoObjeto tipo;
  int estrellas;
  double poderMagico;
  double bonusRecompensa;
  bool awaken;

  ObjetoEquipable({
    required this.id,
    required this.nombre,
    required this.tipo,
    this.estrellas = 1,
    required this.poderMagico,
    this.bonusRecompensa = 0.0,
    this.awaken = false,
  });
}

enum TipoObjeto { Arma, Anillo, Sombrero }
