import 'package:flutter/material.dart';
import 'package:project/app/components/button_components.dart';
import 'package:project/app/components/form_components.dart';
import 'package:project/app/components/space.dart';
import 'package:project/app/components/text_components.dart';
import 'package:project/app/modules/changerPassword/view/change_state.dart';
import 'package:project/outils/colors.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextComponents(txt: "Enter New Password", txtSize: 25, fw: FontWeight.bold, family: "Bold",),
            h(20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextComponents(txt: "Password", txtSize: 18,textAlign: TextAlign.center, fw: FontWeight.bold,family: "Bold",),
                h(10),
                FormComponents(textInputType: TextInputType.visiblePassword,hide: true,),
                TextComponents(txt: "Must be a minimum of eight characters", txtSize: 16, textAlign: TextAlign.center,),
                h(20),
                TextComponents(txt: "Confirm Password", txtSize: 18,textAlign: TextAlign.center, fw: FontWeight.bold,family: "Bold",),
                h(10),
                FormComponents(textInputType: TextInputType.visiblePassword,hide: true,),
                TextComponents(txt: "Must be the same", txtSize: 16, textAlign: TextAlign.center,),
              ],
            ),
            h(40),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeState(),));
              },
              child: ButtonComponent(txtButton: "Save", buttonColor: mainColor,)
            ),

          ],
        ),
      ),
    );
  }
}
