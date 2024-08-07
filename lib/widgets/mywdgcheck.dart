import 'package:flutter/material.dart';
import 'package:proyecto_juego/constants/colors.dart';

class MyWdgCheck extends StatefulWidget {
  final String text;
  final Function(bool value) onChange;
  const MyWdgCheck({
    super.key,
    required this.text,
    required this.onChange
  });

  @override
  State<MyWdgCheck> createState() => _MyWdgCheckState();
}

class _MyWdgCheckState extends State<MyWdgCheck> {

  bool valueSelect = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.text,
        ),
        Checkbox(
          visualDensity: VisualDensity.comfortable,
          splashRadius: 20,
          value: valueSelect, 
          fillColor: WidgetStatePropertyAll(myClrHintPrimary),
          hoverColor: myClrHintPrimary,
          checkColor: myClrPrimary,
          onChanged: (value) {
            setState(() {
              valueSelect = value ?? false;
            });
            widget.onChange(value ?? false);
          },
        )
      ],
    );
  }
}