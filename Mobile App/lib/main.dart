import 'package:flutter/material.dart';
import 'package:project/app/components/text_components.dart';
import 'package:project/app/modules/Splash/View/splash.dart';

import 'app/components/button_components.dart';
import 'outils/colors.dart';
import 'outils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
      ),
      home: Splash(),
    );
  }
}
