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
          body: Image.asset('assets/tigre.png', width: 200,),
      ),
    );
  }
}