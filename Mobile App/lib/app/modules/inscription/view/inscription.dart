import 'package:flutter/material.dart';

import '../../../../outils/colors.dart';
import '../../../components/button_components.dart';
import '../../../components/form_components.dart';
import '../../../components/space.dart';
import '../../../components/text_components.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,

      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20,right: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: TextComponents(txt: "Sign Up Now",fw: FontWeight.bold,txtSize: 25,family: "Bold",)),
              h(40),
              TextComponents(txt: "Email",txtSize: 17,),
              h(10),
              FormComponents(),
              h(20),
              TextComponents(txt: "Phone Number",txtSize: 17,),
              h(10),
              FormComponents(
                textInputType: TextInputType.phone,
              ),
              h(20),
              TextComponents(txt: "Password",txtSize: 17,),
              h(10),
              FormComponents(
                hide: true,
                textInputType: TextInputType.visiblePassword,
              ),
              h(20),
              ButtonComponent(txtButton: "Sign up", buttonColor: mainColor,),
              h(80),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 120,
                      color: Colors.black38,
                    ),
                  ),
                  w(20),
                  TextComponents(txt: "Or continue with"),
                  w(20),
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 120,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
              h(20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Center(
                        child: TextComponents(txt: "Google"),
                      ),
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: mainColor),
                        borderRadius: BorderRadius.circular(10),
                      ),

                    ),
                  ),
                  w(20),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: TextComponents(txt: "Facebook"),
                      ),
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: mainColor),
                        borderRadius: BorderRadius.circular(10),
                      ),

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
