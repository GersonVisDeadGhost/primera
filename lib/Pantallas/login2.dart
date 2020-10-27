import 'package:flutter/material.dart';
import 'package:primera/Pantallas/login2.dart';

class Login2 extends StatefulWidget {
  const Login2({Key key}) : super(key: key);

  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  String strNombre = '';
  final tec = TextEditingController();
  @override
  void dispose() {
    tec.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: <Widget>[
              TextField(
                controller: tec,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Escribe el texto',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.5,
                            style: BorderStyle.solid))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: TextButton(
                  onPressed: () {
                    strNombre = tec.text;
                    print(strNombre);
                  },
                  child: Text(
                    'Ingresar',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
