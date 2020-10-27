import 'package:flutter/material.dart';
import 'package:primera/Pantallas/inicio.dart';
import 'package:primera/Pantallas/login.dart';
import 'package:primera/Pantallas/splash.dart';

class Cambio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          children: <Widget>[
            Splash(),
            Inicio(),
          ],
        ),
      ),
    );
  }
}
