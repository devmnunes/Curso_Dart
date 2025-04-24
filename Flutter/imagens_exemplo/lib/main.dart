import 'package:flutter/material.dart';

void main (){
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
        appBar: AppBar(
          title: Text('Imagens',
           style: TextStyle(
            color: Colors.white
            ),
            ),
          backgroundColor: Colors.black,
          ),
          body: Image.network('https://pt.wikipedia.org/wiki/S%C3%A3o_Paulo_Futebol_Clube#/media/Ficheiro:Brasao_do_Sao_Paulo_Futebol_Clube.svg'),
          //Image.asset('assets/tigre.png', width: 200,),
          
      ),
    );
  }
}