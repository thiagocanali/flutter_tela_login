import 'package:flutter/material.dart';
import 'package:tela_login/widgets/configs.dart';
import 'package:tela_login/widgets/itens.dart';
import 'package:tela_login/widgets/login.dart';
import 'package:tela_login/widgets/home.dart';
import 'package:tela_login/widgets/perfil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: UserList(),
      // home: Login(),
initialRoute: '/',
routes: {
'/' :(context) => Login(),
'/home': (context) => HomePage(),
'/itens': (context) => Itens(),
'/profile': (context) => Profile(),
'/configs': (context) => Settings(),
},
    );
  }
}