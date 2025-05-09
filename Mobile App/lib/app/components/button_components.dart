import 'package:flutter/material.dart';
import 'package:project/outils/colors.dart';

class ButtonComponent extends StatelessWidget {

  String txtButton;
  Color buttonColor;

  ButtonComponent({
    required this.txtButton,
    this.buttonColor = Colors.white
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: mainColor,
      ),
      child: Center(
        child: Text(txtButton, style: TextStyle(
          color: buttonColor,
          fontSize: 17,
        ),),
      ),
    );
  }
}


