import 'package:flutter/material.dart';
import 'package:primera/Pantallas/Datos.dart';
import 'package:primera/Pantallas/Principal.dart';
import 'package:primera/Pantallas/inicio.dart';
import 'package:primera/Providers/UserPrv.dart';
import 'package:primera/Screems/sinup.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({Key key, this.userProvider}) : super(key: key);

  get email => null;
  final UserPrv userProvider;
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<UserPrv>(context);
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
          //resizeToAvoidBottomInset: false,
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Inicio()));
              },
            ),
            backgroundColor: Color.fromARGB(255, 252, 79, 50),
            title: Text('Login'),
          ),
          body: Container(
            color: Colors.red,
            child: Container(
              child: SingleChildScrollView(
                child: Container(
                  color: Color.fromARGB(255, 255, 249, 239),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * .33,
                        width: MediaQuery.of(context).size.width,
                        child: FractionallySizedBox(
                            widthFactor: 1,
                            heightFactor: 1,
                            child: Container(
                              child: Image(
                                  image:
                                      AssetImage('assets/Imagenes/fondo3.png')),
                            )),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * .35,
                          child: FractionallySizedBox(
                            widthFactor: .9,
                            heightFactor: 1,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 3,
                                  child: Center(
                                    child: Text(
                                      'Ingresa tus credenciales\nregistradas para acceder',
                                      textScaleFactor: 1.5,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: FractionallySizedBox(
                                    heightFactor: .8,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                              width: 2, color: Colors.black)),
                                      child: Card(
                                        margin: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: ListTile(
                                          leading: Icon(Icons.email),
                                          title: TextFormField(
                                            decoration: InputDecoration(
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0)))),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: FractionallySizedBox(
                                    heightFactor: .8,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                              width: 2, color: Colors.black)),
                                      child: Card(
                                        margin: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: ListTile(
                                          leading: Icon(Icons.lock_sharp),
                                          title: TextFormField(
                                            obscureText: true,
                                            decoration: InputDecoration(
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0)))),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: InkWell(
                                        child: RichText(
                                            text: TextSpan(
                                                text:
                                                    '¿Aún no tienes una cuenta?',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                ),
                                                children: [
                                              TextSpan(
                                                text: ' Consigue una',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 16,
                                                ),
                                              )
                                            ])),
                                        onTap: () {
                                          print(myProvider.user);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SingUp()));
                                        },
                                      ),
                                    )),
                              ],
                            ),
                          )),
                      Container(
                          height: MediaQuery.of(context).size.height * .2,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: FractionallySizedBox(
                                  widthFactor: .9,
                                  heightFactor: .5,
                                  child: Container(
                                    child: MaterialButton(
                                      color: Color.fromARGB(255, 252, 79, 50),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0)),
                                      onPressed: () {
                                        print(userProvider);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Principal()));
                                      },
                                      child: Text(
                                        'CONTINUAR',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ))
                      /* child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: MaterialButton(
                            color: Color.fromARGB(255, 252, 79, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            onPressed: () {},
                            child: Text(
                              'CONTINUAR',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),*/
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
