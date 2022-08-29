import 'package:flutter/material.dart';

class AuthButtons extends StatelessWidget {
  final String name;
  
  final VoidCallback onTapF;
  Color textColor;
  Color backColor;

  AuthButtons(
      {required this.name,
      required this.backColor,
      required this.onTapF,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapF,
      child: Container(
        width: 320,
        height: 50,
        decoration: BoxDecoration(
          color: backColor,
          borderRadius:const BorderRadius.all(Radius.circular(25)),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(fontSize: 18, color: textColor),
          ),
        ),
      ),
    );
  }
}
