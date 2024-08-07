import 'package:proyecto_juego/models/mago.dart';
import 'package:proyecto_juego/models/medalla.dart';
import 'package:proyecto_juego/models/objeto_equipable.dart';
import 'package:proyecto_juego/models/registro_retiro.dart';

class Usuario {
  String nombre;
  String correo;
  String walletMetamaskBSC;
  String contrasena;
  double fee;
  DateTime fechaCreacion;
  List<Mago> magos;
  List<ObjetoEquipable> objetos;
  double magicGold;
  double crystal;
  List<Medalla> medallas;
  List<RegistroRetiro> retiros;

  Usuario({
    required this.nombre,
    required this.correo,
    required this.walletMetamaskBSC,
    required this.contrasena,
    this.fee = 50.0,
    required this.fechaCreacion,
    this.magos = const [],
    this.objetos = const [],
    this.magicGold = 0.0,
    this.crystal = 0.0,
    this.medallas = const [],
    this.retiros = const [],
  });
}
