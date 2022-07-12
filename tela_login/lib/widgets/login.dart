import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  static const String _title = 'Login';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(_title)),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                      color: Color.fromARGB(255, 3, 71, 128), fontSize: 30),
                  decoration: InputDecoration(
                    labelText: "Email do usuário",
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
                Divider(),
                TextField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      color: Color.fromARGB(255, 3, 71, 128), fontSize: 30),
                  decoration: InputDecoration(
                    labelText: "Senha do usuário",
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
                Divider(),
                ButtonTheme(
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: () => {
                      print('botão do LOGIN pressionado!'),
                      Navigator.pushNamed(context, '/home')
                    },
                    style: ButtonStyle(),
                    child: Text(
                      'Enviar',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
