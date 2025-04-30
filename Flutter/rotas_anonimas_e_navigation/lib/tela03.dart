import 'package:flutter/material.dart';

class Tela3 extends StatelessWidget {
  const Tela3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('Tela 03'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Voltar Tela 2'),
             onPressed: () { 
               Navigator.pop(context);
              },
           
              
             ),
        ),
      ),
    );
  }
}