import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
      body: Center(
        child: Text('Texto \n Texto 2',
        style: TextStyle(
          fontSize: 35,
          fontFamily: 'Painterz',
          fontWeight: FontWeight.bold,
          color: Colors.black,
          backgroundColor: Colors.yellow,
        ),)),
      ),
    
    );
  }
}