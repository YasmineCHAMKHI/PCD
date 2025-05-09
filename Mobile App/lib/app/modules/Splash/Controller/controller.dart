import 'package:flutter/material.dart';

import '../../home/view/home.dart';

time(BuildContext context) {
  Future.delayed(Duration(seconds: 5),(){
    //print("Welcome to MySmartDay");
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(),));
  });
}