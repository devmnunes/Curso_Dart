

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Página de login', style: TextStyle(
            color: Colors.white,
          ), ),
          backgroundColor: const Color.fromARGB(255, 14, 106, 182),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Insira seus dados',
              textAlign: TextAlign.center,
               style: TextStyle(fontSize: 17,
                ),
               ),
          
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-mail'
                ),
              ),
          
              TextField(
                decoration: InputDecoration(
                  labelText: 'Senha'
                ),
                obscureText: true,
              ),
          
              Text('Esqueceu a senha?'),
          
              SizedBox(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(Radius.circular(2.5)),
                    ),
                    
                    backgroundColor: const Color.fromARGB(255, 14, 106, 182),
                  ),
                  onPressed: (){},
                 child: Text('Entrar', style: TextStyle(
                  color: Colors.white,
                 ),),
                 ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}