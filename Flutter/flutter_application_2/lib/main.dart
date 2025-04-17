import 'package:flutter/material.dart';

void main (){
  runApp(MyApp(nome: 'Pedro',));
}

/* StatefulWidget usado para mudança de estado da inteface do usuario (A TELA MUDA) teremos 2 obejtos 

   1. Widget - Responsavel por criar o Objeto de Estado e guardar dados não mutáveis.
   
   2. Objeto de Estado - Responsavel por criar o Widget com método build e mostrar as variaveis mutáveis e não mutáveis. */


class MyApp extends StatefulWidget {
  final String nome;

  const MyApp({super.key, this.nome = ''});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
int salario = 7000;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {print('Clicou');
        print('Novo salário $salario.');

        setState(() {
          salario = salario + 100;
        });
        },
        child: Text('O salário de ${widget.nome} é $salario.',
         textDirection: TextDirection.ltr,
         ),
      ),
    );
  }
}