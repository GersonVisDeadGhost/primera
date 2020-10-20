import 'dart:math';
import 'package:flutter/material.dart';
import 'package:primera/Pantallas/inicio.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "splash",
        home: Scaffold(
          body: Container(
            child: Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                image: new AssetImage('assets/Imagenes/fastFood.png'),
                fit: BoxFit.cover,
              )),
            ),
          ),
        ));
  }
}

class EvSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      // When the child is tapped, show a snackbar.
      onTap: () {
        final snackBar = SnackBar(content: Text("Tffggggap"));
        Scaffold.of(context).showSnackBar(snackBar);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Inicio()));
      },
      // The custom button
    );
  }
}
