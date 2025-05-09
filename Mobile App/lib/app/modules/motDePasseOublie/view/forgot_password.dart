import 'package:flutter/material.dart';
import 'package:project/app/components/button_components.dart';
import 'package:project/app/components/form_components.dart';
import 'package:project/app/components/space.dart';
import 'package:project/app/components/text_components.dart';
import 'package:project/app/modules/connexion/view/login.dart';
import 'package:project/outils/colors.dart';

import '../../otp/view/otp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              TextComponents(txt: "Forgot Password", fw: FontWeight.bold, txtSize: 25, family: "Bold",),
              h(20),
              TextComponents(txt: "Please enter your email address", textAlign: TextAlign.center,),
              h(40),
              Image.asset("assets/images/1.jpg", scale: 1.7,),
              h(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextComponents(txt: "Email Address", fw: FontWeight.bold,),
                ],
              ),
              FormComponents(textInputType: TextInputType.emailAddress,),
              h(20),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OTP(),));
                },
                  child: ButtonComponent(txtButton: "Send", buttonColor: mainColor,)
              ),
              h(20),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                },
                child: TextComponents(txt: "Back to login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
