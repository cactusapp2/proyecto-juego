import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_juego/constants/colors.dart';
import 'package:proyecto_juego/models/games.dart';
import 'package:proyecto_juego/pages/login/login.dart';

class MyWdgButtonGame extends StatelessWidget {
  final Game juego;
  const MyWdgButtonGame({super.key, required this.juego});

  @override
  Widget build(BuildContext context) {
    
    return Bounce(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: myClrBackground,
          ),
          
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    juego.urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                juego.nombre,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 18,
                  color: myClrFont,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}