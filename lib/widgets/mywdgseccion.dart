import 'package:flutter/material.dart';
import 'package:proyecto_juego/constants/colors.dart';

class MyWdgSeccion extends StatelessWidget {
  final String titulo;
  final Widget child;
  const MyWdgSeccion({super.key,required this.titulo,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: myClrBackground,
      ),
      child: Column(
        children: [
          Text(titulo),
          child
        ],
      ),
    );
  }
}