class RegistroRetiro {
  String usuario;
  double monto;
  DateTime fechaHora;
  EstadoRetiro estado;
  double fee;

  RegistroRetiro({
    required this.usuario,
    required this.monto,
    required this.fechaHora,
    required this.estado,
    required this.fee,
  });
}

enum EstadoRetiro { Cancelado, Aprobado, Pendiente }
