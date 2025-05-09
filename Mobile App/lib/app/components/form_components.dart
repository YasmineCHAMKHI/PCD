import 'package:flutter/material.dart';

class FormComponents extends StatelessWidget {

  TextInputType textInputType;
  bool hide;

  FormComponents( {
    this.hide = false,
    this.textInputType = TextInputType.emailAddress,
});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      obscureText: hide,
      decoration: InputDecoration(
        suffixIcon: hide? Icon(Icons.remove_red_eye_rounded) : null,
        border: OutlineInputBorder(),
      ),
    );
  }
  /*
     if hide==true alors afficher l'icon de l'oeil
     else null
   */
}
