import 'package:flutter/material.dart';

void main(){
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
          title: Text('Aplicativo exemplo Stack'),
          backgroundColor: Colors.red,
        ),
        body: Stack( // Stack coloca um Widget em cima do outro.
        alignment: Alignment.center,
          children: [
            Container(
              width: 400,
              height: 400,
              color: Colors.blue,
            ),

            Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}