import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Estrutura do Aplicativo
        appBar: AppBar(
          title: Center(
            child: Text(
              'Aplicativo exemplo Scaffold',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Row( // Coloca todos os Widgets filhos na mesma linha
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //  mainAxisAlignment faz alinhamento na horizontal <--->
          children: [
            Center(
              child: Text('Mesma linha 1', style: TextStyle(fontSize: 20)),
            ),
            Center(
              child: Text('Mesma linha 2', style: TextStyle(fontSize: 20)),
            ),
            Center(
              child: Text('Mesma linha 3', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
