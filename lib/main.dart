import 'package:flutter/material.dart';
import 'package:primera/Pantallas/cambio.dart';
import 'package:primera/Pantallas/splash.dart';
import 'Pantallas/inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Comida rapida",
      home: Cambio(),
    );
  }
}
