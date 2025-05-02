import 'package:flutter/material.dart';


class Tela2 extends StatelessWidget {

  static const routeName = '/Tela2';
  
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {


    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 4, 194, 7),
          title: Center(child: Text('Tela 02')),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: ElevatedButton(
                  child: Text('Voltar para tela 01'),
              
                  onPressed: () {
                    Navigator.pop( //Usar NAVIGATOR.POP para ir para pagina anterior
                      context,
                    ); 
                  },
                ),
              ),
          
              Center(
                child: ElevatedButton(
                  child: Text('Ir para tela 03'),
              
                  onPressed: () {
                    Navigator.pushNamed(context, '/Tela3'); //Usar NAVIGATOR.pushName para ir para proxima pagina 
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
