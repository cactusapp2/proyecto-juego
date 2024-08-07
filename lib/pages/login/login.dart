import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proyecto_juego/constants/colors.dart';
import 'package:proyecto_juego/constants/data_test.dart';
import 'package:proyecto_juego/constants/values.dart';
import 'package:proyecto_juego/pages/home/home.dart';
import 'package:proyecto_juego/widgets/mywdgbutton.dart';
import 'package:proyecto_juego/widgets/mywdgcheck.dart';
import 'package:proyecto_juego/widgets/mywdgtextbutton.dart';
import 'package:proyecto_juego/widgets/mywdgtextfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myClrBackground,
      body: Stack(
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
            child: Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width > anchoPantallaCelular ? anchoPantallaCelular : null,
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height > 500 ? 500 : MediaQuery.of(context).size.height  ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width > anchoPantallaCelular
                  ? 20
                  : 0
                ),
                color: myClrBackground
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 25,
                      color: myClrPrimary,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  MyWdgTextField(
                    title: "Correo Electronico",
                    hintText: "user@petslime",
                    iconData: FontAwesomeIcons.envelope,
                  ),
                  MyWdgTextField(
                    title: "Clave",
                    hintText: "******",
                    iconData: FontAwesomeIcons.lock,
                    isObscure: true,
                  ),
                  MyWdgCheck(
                    text: "Recordar", 
                    onChange: (value){

                    }
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyWdgTextButton(
                        text: "Registrar", 
                        onPressed: (){}
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: MyWdgButton(
                          text: "Iniciar",
                          onPressed: () {
                            Navigator.pushReplacement(
                              context, 
                              MaterialPageRoute(builder: 
                              (context) => HomePage(),)  
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  MyWdgTextButton(
                    text: "Recuperar Clave",
                    onPressed: () {
                      
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}