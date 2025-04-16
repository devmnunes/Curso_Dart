import 'package:flutter/material.dart';

/* A material é responsável pelo comportamento visual e interações do aplicativo em flutter. Usando os widgets da Material Design teremos um guia para?

App structure and navigation
Buttons
Input and selections
Dialogs, alerts, and panels
Information displays
Layout */

void main() {
  runApp(
    // <- RODA O APP
    MaterialApp(
      // <- APP
      home: Scaffold( // <- SCAFFOLD É A BASE DA TELA
        appBar: AppBar( // <- AppBar Barra superior do APP
          title: Center(
            child: Text('Meu APP')
            ),
            backgroundColor: const Color.fromARGB(255, 161, 55, 180),
          ), 
        body: Center(
          child: Text(
            'Olá Mundo',
            style: TextStyle(fontSize: 40, color: Colors.pink),
          ),
        ),
      ),
    ),
  );
}
