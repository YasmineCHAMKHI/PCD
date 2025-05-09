import 'package:flutter/material.dart';
import 'package:project/app/components/button_components.dart';
import 'package:project/app/components/space.dart';
import 'package:project/app/components/text_components.dart';
import 'package:project/app/modules/connexion/view/login.dart';
import 'package:project/app/modules/inscription/view/inscription.dart';
import 'package:project/outils/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: homeBg,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20),
        color: homeBg,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            TextComponents(txt: "Welcome",txtSize: 35, fw: FontWeight.bold, family: "Bold",),
            TextComponents(txt: "Human Activities Supervision",txtSize: 18,),
            h(40),
            Image.asset("assets/images/1.jpg"),
            h(40),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Inscription(),));
                },
                child: ButtonComponent(txtButton: "Sign Up", buttonColor: mainColor)
            ),
            h(20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
              },
              child: ButtonComponent(txtButton: "Log In", buttonColor: loginButtonColor),
            ),

          ],
        ),
      ),
    );
  }
}
