import 'package:flutter/material.dart';
import 'package:project/app/components/button_components.dart';
import 'package:project/app/components/space.dart';
import 'package:project/app/components/text_components.dart';
import 'package:project/outils/colors.dart';

class ChangeState extends StatefulWidget {
  const ChangeState({super.key});

  @override
  State<ChangeState> createState() => _ChangeStateState();
}

class _ChangeStateState extends State<ChangeState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),

      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height/2.2,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 150,),
              h(20),
              TextComponents(txt: "Congratulations !",family: "Bold",fw: FontWeight.bold,txtSize: 28,),
              h(20),
              TextComponents(txt: "Your account has been successfully \ncreated",txtSize: 20,textAlign: TextAlign.center,),
              h(20),
              ButtonComponent(txtButton: "Continue", buttonColor: mainColor,),
            ],
          ),
        ),
      ),
    );
  }
}
