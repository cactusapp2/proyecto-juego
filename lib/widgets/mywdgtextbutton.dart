import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';

class MyWdgTextButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  const MyWdgTextButton({super.key, required this.text, required this.onPressed});

  @override
  State<MyWdgTextButton> createState() => _MyWdgTextButtonState();
}

class _MyWdgTextButtonState extends State<MyWdgTextButton> {
  @override
  Widget build(BuildContext context) {
    return Bounce(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          widget.onPressed();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(200, 35, 35, 35),
            ),
          ),
        ),
      ),
    );
  }
}