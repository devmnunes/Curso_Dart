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
          body: Image.network('https://pt.pngtree.com/freepng/tiger-logo-icon_14529835.html')
          //Image.asset('assets/tigre.png', width: 200,),
          
      ),
    );
  }
}