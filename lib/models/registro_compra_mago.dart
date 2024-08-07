class RegistroCompraMago {
  String usuario;
  String productoComprado;
  String idProducto;
  DateTime fecha;
  double costo;
  double monedaAntes;
  double monedaDespues;

  RegistroCompraMago({
    required this.usuario,
    required this.productoComprado,
    required this.idProducto,
    required this.fecha,
    required this.costo,
    required this.monedaAntes,
    required this.monedaDespues,
  });
}
