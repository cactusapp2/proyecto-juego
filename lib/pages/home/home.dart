import 'package:flutter/material.dart';
import 'package:proyecto_juego/constants/colors.dart';
import 'package:proyecto_juego/constants/data_test.dart';
import 'package:proyecto_juego/widgets/mywdgbutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20
            ),
            child: Row(
              children: [
                Image.network(
                  dataTestLogo,
                  width: 180,
                ),
                Spacer(),
                Container(
                  width: 120,
                  height: 60,
                  padding: EdgeInsets.only(left: 20),
                  child: MyWdgButton(
                    text: "DISCORD",
                    color: myClrPrimary,
                    colorFont: myClrFontPrimary,
                  ),
                ),
                Container(
                  width: 120,
                  height: 60,
                  padding: EdgeInsets.only(left: 20),
                  child: MyWdgButton(
                    text: "TELEGRAM",
                    color: myClrPrimary,
                    colorFont: myClrFontPrimary,
                  ),
                ),
                Container(
                  width: 120,
                  height: 60,
                  padding: EdgeInsets.only(left: 20),
                  child: MyWdgButton(
                    text: "TWITTER",
                    color: myClrPrimary,
                    colorFont: myClrFontPrimary,
                  ),
                ),
              ],
            ),
          ),
          

          
        ],
      ),
    );
  }
}