import 'package:flutter/material.dart';
import 'package:primera/Screems/inicio.dart';
import 'package:primera/Screems/login.dart';
import 'package:primera/Screems/splash.dart';

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
