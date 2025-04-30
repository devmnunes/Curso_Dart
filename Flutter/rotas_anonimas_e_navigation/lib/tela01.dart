import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Center(child: Text('Tela 01')),
        ),
        body: Center(
          child: ElevatedButton(
             onPressed: () { 

              Navigator.pushNamed(context, '/Tela2');
          
              },
             child: Text('Ir para tela 02'),
                ),
        ),
    ),
    );
  }
}