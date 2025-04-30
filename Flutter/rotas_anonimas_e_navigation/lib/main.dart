import 'package:flutter/material.dart';
import 'package:rotas_anonimas_e_navigation/tela01.dart';
import 'package:rotas_anonimas_e_navigation/tela02.dart';
import 'package:rotas_anonimas_e_navigation/tela03.dart';

void main (){
  runApp(MyApp() );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:  '/Tela1', //Rotas Nomeadas
      routes: {
        '/Tela1' : (context) => Tela1(),
        '/Tela2' : (context) => Tela2(),
         '/Tela3' : (context) => Tela3(),
        
      },
    );
  }
}

