import 'package:flutter/material.dart';
import 'package:parametro_rotas_nomeadas/main.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Tela 1'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Proximo'),
            onPressed: (){
              Navigator.pushNamed(context, '/Tela2',
              arguments: Argumentos("Matheus"));
            }, 
            
            
          ),
        ),
      ),
    );
  }
}