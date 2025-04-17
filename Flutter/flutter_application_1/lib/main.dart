import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // <-runApp Roda o APP
}

class MyApp extends StatelessWidget { // <- StatelessWidget usado quando não tem mudança de estado na tela do app
  const MyApp({super.key});

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
              'Meu App',
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
