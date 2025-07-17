import 'package:flutter/material.dart';

void main () {
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
          centerTitle: true,
          title: Text('Página de login'),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Insira seus dados',
             style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold),
             ),

             Text('Email:',
             style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.bold),
              ),

            TextField(),

            Text('Senha:',
            style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.bold),
              ),

            TextField(),

            ElevatedButton(onPressed: (){},
             child: Text('Entrar'),
             ),

            Text('Esqueceu a senha?'),

          ],
        ),
      ),
    );
  }
}