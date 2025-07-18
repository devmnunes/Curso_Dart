

import 'package:flutter/material.dart';

enum Genero {
  Masculino,
  Feminino,
  Outros
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

String email = '';
String senha = '';
bool checkBox = false;
Genero genero = Genero.Masculino;

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
                onChanged: (textEmail) {
                  email = textEmail;
                  if (textEmail.contains('@')) {
                    print('E-mail valido');
                  }
                  else {
                    print('E-mail invalido');
                  }
                },
              ),
          
              TextField(
                decoration: InputDecoration(
                  labelText: 'Senha'
                ),
                onChanged: (textSenha) {
                  senha = textSenha;
                },
                obscureText: true,
              ),

              Row(
                children: [
                  Radio(
                    value: Genero.Masculino,
                    groupValue: genero,
                    onChanged: (Genero? generoSelecionado) {
                      setState(() {
                        genero = generoSelecionado!;
                      });
                    },
                  ),
                  Text('Masculino'),

                  Radio(
                    value: Genero.Feminino,
                    groupValue: genero,
                    onChanged: (Genero? generoSelecionado) {
                      setState(() {
                        genero = generoSelecionado!;
                      });
                    },
                  ),
                  Text('Feminino'),

                  Radio(
                    value: Genero.Outros,
                    groupValue: genero,
                    onChanged: (Genero? generoSelecionado) {
                      setState(() {
                        genero = generoSelecionado!;
                      });
                    },
                  ),
                  Text('Outro'),
                ],
              ),

              Row(
                children: [
                  Checkbox(
                    value: checkBox,
                    onChanged: (checked) {
                      setState(() {
                        checkBox = !checkBox;
                      });
                    },
                    ),
                    Text('Concordo com os termos de uso'),
                ],
              ),
          
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(Radius.circular(2.5)),
                    ),
                    
                    backgroundColor: const Color.fromARGB(255, 14, 106, 182),
                  ),
                  onPressed: (){
                    print('E-mail: ${email}');
                    print('Senha: ${senha}');
                    print('Termos de uso: ${checkBox}');
                    print('Genero: ${genero}');
                  },
                 child: Text('Entrar', style: TextStyle(
                  color: Colors.white,
                 ),),
                 ),

                 Text('Esqueceu a senha?'),
              ],
          ),
        ),
      ),
    );
  }
}