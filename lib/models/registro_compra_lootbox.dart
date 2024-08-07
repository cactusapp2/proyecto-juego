class RegistroCompraLootBox {
  String usuario;
  String idProducto;
  String recompensa;
  String idRecompensa;
  DateTime fecha;
  double monedaAntes;
  double monedaDespues;

  RegistroCompraLootBox({
    required this.usuario,
    required this.idProducto,
    required this.recompensa,
    required this.idRecompensa,
    required this.fecha,
    required this.monedaAntes,
    required this.monedaDespues,
  });
}
