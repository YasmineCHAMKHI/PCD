import 'package:flutter/material.dart';
import 'package:project/app/components/text_components.dart';
import 'package:project/app/modules/Splash/Controller/controller.dart';
import 'package:project/outils/colors.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    time();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 240,
          width: 200,
          child: Column(
            children: [
              Image.asset("assets/images/1.jpg", scale: 1.3,),
              TextComponents(txt: "MySmartDay", txtSize: 30, fw: FontWeight.bold,),
              TextComponents(txt: "Smart Home", txtSize: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
