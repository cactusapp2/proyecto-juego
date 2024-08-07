import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proyecto_juego/constants/colors.dart';

class MyWdgTextField extends StatefulWidget {
  final String? title;
  final String? hintText;
  final TextEditingController? textEditingController;
  final bool isObscure;
  final IconData? iconData;
  final Function(String value)? onChanged;
  final TextInputType keyboardType;

  const MyWdgTextField({
    Key? key,
    this.title,
    this.hintText,
    this.textEditingController,
    this.onChanged,
    this.iconData,
    this.keyboardType = TextInputType.name,
    this.isObscure = false,
  }) : super(key: key);

  @override
  State<MyWdgTextField> createState() => _MyWdgTextFieldState();
}

class _MyWdgTextFieldState extends State<MyWdgTextField> {
  bool isActive = false;
  bool obscure = true;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    focusNode.addListener(() {
      setState(() {
        isActive = focusNode.hasFocus;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null)
          Text(
            widget.title!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color.fromARGB(255, 53, 53, 53),
            ),
          ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(
                    color: isActive ? myClrPrimary : myClrHint,
                    width: 2,
                  ),
                ),
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    if (widget.iconData != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          widget.iconData,
                          size: 18,
                          color: isActive ? myClrPrimary : myClrHint,
                        ),
                      ),
                    Expanded(
                      child: TextField(
                        focusNode: focusNode,
                        controller: widget.textEditingController,
                        obscureText: widget.isObscure ? obscure : false,
                        keyboardType: widget.keyboardType,
                        decoration: InputDecoration(
                          hintText: widget.hintText,
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                          border: InputBorder.none,
                          fillColor: myClrPrimary,
                          hoverColor: myClrPrimary,
                          focusColor: myClrPrimary,
                        ),
                        onChanged: (value) {
                          if (widget.onChanged != null) {
                            widget.onChanged!(value);
                          }
                        },
                      ),
                    ),
                    if (widget.isObscure)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            obscure ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                            color: obscure ? Colors.purple : Colors.grey,
                            size: 20,
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
