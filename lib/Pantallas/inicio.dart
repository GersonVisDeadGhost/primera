import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 249, 239),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage('assets/Imagenes/balloon-shape.png')),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Image(
                image: AssetImage('assets/Imagenes/FastFood-Logo.png'),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
              child: Image(
                  image: AssetImage('assets/Imagenes/online_groceries.png')),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                        text: 'El directorio de comida',
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        )),
                    textScaleFactor: 2,
                  ),
                  Text.rich(
                    TextSpan(
                        text: 'Busca.Encuentra.Pide',
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        )),
                    textScaleFactor: 1.5,
                  ),
                  Text.rich(
                    TextSpan(
                        text: 'Recive.Disfruta',
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.none)),
                    textScaleFactor: 1.5,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
                child: Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    onPressed: () {},
                    color: Color.fromARGB(255, 255, 151, 0),
                    child: Text('INICIA AHORA',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ])),
          )
        ],
      ),
    );
  }
}
