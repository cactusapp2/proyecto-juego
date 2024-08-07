import 'package:flutter/material.dart';
import 'package:proyecto_juego/constants/colors.dart';
import 'package:proyecto_juego/constants/data_test.dart';
import 'package:proyecto_juego/pages/login/login.dart';
import 'package:proyecto_juego/widgets/mywdgbuttongame.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myClrBackground,
      body:   Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              dataTestUrlBackground,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: (MediaQuery.of(context).size.width / 200).toInt() <= 0 ? 1 : (MediaQuery.of(context).size.width / 200).toInt() ,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: dataTestGames.length,
              itemBuilder: (context, index) {
                return MyWdgButtonGame(
                  juego: dataTestGames[index]
                  
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}