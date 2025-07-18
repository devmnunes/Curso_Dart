import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //List<String> listaProdutos = [];

  List<String> listaProdutos = List<String>.generate(20, (i) => 'Produto ${i + 1}');

  @override
  Widget build(BuildContext context) {

    print(listaProdutos.length);

  /*  for (var i = 0; i < 20; i++) {
      listaProdutos.add('Produto ${i+1}');
    } */

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('List View', style: TextStyle(
            color: Colors.white,
          ), ),
          backgroundColor: const Color.fromARGB(255, 14, 106, 182),
        ),

        body: ListView.builder(
          itemCount: listaProdutos.length,
          itemBuilder: (context, indice) {
            return ListTile(
                  title: Text(listaProdutos[indice]),
              onTap: () {
                print(indice);
                print('${listaProdutos[indice]} foi selecionado');
              },
            );
          }),

      ),
    );
  }
}