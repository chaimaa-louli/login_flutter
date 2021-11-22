import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<Splash> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login mundiapolis'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                // Container(
                //   height: 110,
                //   width: 120,
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage('assets/logo.png'),
                //     ),
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'nom',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mot de passe',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  textColor: Colors.green,
                  child: Text('Mot de passe oublié?'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('se connecter'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('tu n\'a pas un compte ?'),
                    FlatButton(
                      textColor: Colors.green,
                      child: Text(
                        's\'inscrire',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
