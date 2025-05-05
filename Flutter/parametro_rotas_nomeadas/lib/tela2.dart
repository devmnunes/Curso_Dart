import 'package:flutter/material.dart';
import 'package:parametro_rotas_nomeadas/main.dart';

class Tela2 extends StatelessWidget {

static const routeName = '/Tela2';

  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)!.settings.arguments as Argumentos;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,

          title: Text('Tela 2' + argumentos.nome),
        ),
        body: Center(
          child: ElevatedButton(
            
            child: Text('Voltar'),
            onPressed: () {
              Navigator.pop(context,);
          },
          
          ),
        ),
      ),
    );
  }
}