import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( //Padrões pré definidas no app
        fontFamily: 'Painterz',
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          color: Colors.purple.shade700),

          ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu App',
          ),
        ),
        
      body: Center(
        child: Text('Texto \n Texto 2',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          backgroundColor: Colors.yellow,
        ),)),
      ),
    
    );
  }
}