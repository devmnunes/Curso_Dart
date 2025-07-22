import 'package:flutter/material.dart';

import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  //List<String> listaProdutos = [];

  List<String> listaProdutos = List<String>.generate(
    20,
    (i) => 'Produto ${i + 1}',
  );

  Future<List<Produto>> getProdutos() async {
    
    Uri uri = Uri.https('https://api.json-generator.com/templates/72wvYFb9kfuM/data?access_token=fqac8t7tjfg2bf747xt8bteees07k789xr27zzud');

    print(uri);

    var response = await http.get(uri);
    var dados = json.decode(response.body);

    print(dados);

    dados.forEach( (elemento) {
      print(elemento);
    });

    /* Produto produto = Produto(
      elemento['id'],
      elemento['name'],
      elemento['address'],
      elemento['descricao'],
      elemento['imagem'],
      int.parse(elemento['quantidade']),
      double.parse(elemento['preco']),
    ); */
      


    

    return [];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('List View', style: TextStyle(color: Colors.white)),
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
          },
        ),
      ),
    );
  }
}

class Produtos {
  final List produtos;

  Produtos(this.produtos);
}

class Produto {
  final int id;
  final String name;
  final String address;
  final String descricao;
  final String imagem;
  final int quantidade;
  final double preco;

  Produto(
    this.id,
    this.name,
    this.address,
    this.descricao,
    this.imagem,
    this.quantidade,
    this.preco,
  );

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      json['id'],
      json['name'],
      json['address'],
      json['descricao'],
      json['imagem'],
      json['quantidade'],
      json['preco'],
    );
  }

  Map<String, dynamic> toJson() => {
    'produtoId': this.id,
    'produto': this.name,
    'endereco': this.address,
    'descricao': this.descricao,
    'imagem': this.imagem,
    'quantidade': this.quantidade,
    'preco': this.preco,
  };
}
