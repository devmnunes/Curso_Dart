import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(title: 'Meu Aplicativo',)); // <-runApp Roda o APP
}

class MyApp extends StatelessWidget {
  // <- StatelessWidget usado quando não tem mudança de estado da inteface do usuario (A TELA NÃO MUDA) apena um objeto o Widget.

  final String title; // <- Colocando parametro no Stateless Widget

  const MyApp({super.key, this.title = ''});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // <- Estrutura do APP
        appBar: AppBar(
          // <- Barra superior
          backgroundColor: Colors.purpleAccent,
          title: Center(
            child: Text(
              this.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Center(
          child: Text(
            'Olá, mundo',
            style: TextStyle(
              color: const Color.fromARGB(255, 10, 10, 10),
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
