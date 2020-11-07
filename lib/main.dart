// ignore: todo
// TODO Implement this library.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primera/Pantallas/Datos.dart';
import 'package:primera/Screems/sinup.dart';
import 'package:provider/provider.dart';
import 'Providers/UserPrv.dart';
import 'Pantallas/cambio.dart';
import 'Pantallas/inicio.dart';
import 'Pantallas/login.dart';
import 'Pantallas/principal.dart';
import 'Pantallas/login.dart';
import 'Pantallas/splash.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserPrv()),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: PageView(
        children: <Widget>[
          Splash(),
          Inicio(),
          /*Cambio(),
          Login(),
          Datos(),
          Principal(),*/
        ],
      )),
    );
  }
}
