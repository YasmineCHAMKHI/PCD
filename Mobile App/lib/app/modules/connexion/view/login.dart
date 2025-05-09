import 'package:flutter/material.dart';
import 'package:project/app/components/button_components.dart';
import 'package:project/app/components/form_components.dart';
import 'package:project/app/components/space.dart';
import 'package:project/app/components/text_components.dart';
import 'package:project/outils/colors.dart';

import '../../motDePasseOublie/view/forgot_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              Center(child: TextComponents(txt: "Sign In Now",fw: FontWeight.bold,txtSize: 25,family: "Bold",)),
              h(40),
              TextComponents(txt: "Email/Phone",txtSize: 17,),
              h(10),
              FormComponents(),
              h(20),
              TextComponents(txt: "Password",txtSize: 17,),
              h(10),
              FormComponents(
                hide: true,
                textInputType: TextInputType.visiblePassword,
              ),
              h(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextComponents(txt: "Remember me", color: Colors.black38,),
                  InkWell(
                      onTap:  () {
                        Navigator.push(context, MaterialPageRoute(builder: (contaxt) => ForgotPassword(),));
                      },
                      child: TextComponents(txt: "Forgot password", color: mainColor,fw: FontWeight.bold,)),
                ],
              ),
              h(20),
              ButtonComponent(txtButton: "Login", buttonColor: mainColor,),
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
        
              h(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextComponents(txt: "Don't have any account? ", fw: FontWeight.bold,),
                  TextComponents(txt: "Sign Up", color: mainColor, fw: FontWeight.bold,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
