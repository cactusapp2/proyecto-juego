import 'package:flutter/material.dart';
import 'package:proyecto_juego/constants/colors.dart';

class MyWdgFooter extends StatelessWidget {
  const MyWdgFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20
      ),
      color: myClrBackground,
      child: Center(
        child: Text(
          "@ 2024 All Right Reservet copyrig to PETSILME"
        ),
      ),
    );
  }
}