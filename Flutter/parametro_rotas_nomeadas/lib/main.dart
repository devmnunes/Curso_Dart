import 'package:flutter/material.dart';
import 'package:parametro_rotas_nomeadas/tela1.dart';
import 'package:parametro_rotas_nomeadas/tela2.dart';

void main () {
  runApp( MyApp());

}

class Argumentos {
  final String nome;

  Argumentos(this.nome);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/Tela1',
      routes: {
        '/Tela1': (context) =>  Tela1(),
        Tela2.routeName: (context) => Tela2(),
        //'/Tela2': (context) => Tela2(),
      },
    );
  }
}