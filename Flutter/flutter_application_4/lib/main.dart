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

  Future<List<Produto>?> getProdutos() async {
    Uri uri = Uri.parse(
      'https://api.json-generator.com/templates/72wvYFb9kfuM/data?access_token=fqac8t7tjfg2bf747xt8bteees07k789xr27zzud',
    );
    print(uri);

    var response = await http.get(uri);

    var dados = json.decode(response.body) as List;

    print(dados);

    dados.forEach((elemento) {
      print(elemento);
    });
  }

  @override
  Widget build(BuildContext context) {
    //print(listaProdutos.length);

    /*  for (var i = 0; i < 20; i++) {
      listaProdutos.add('Produto ${i+1}');
    } */

    return MaterialApp(
     /* home: Scaffold(
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
      ), */
    );
  }
}

class Produtos {
  final List produtos;

  Produtos(this.produtos);
}

class Produto {
  final int produtoId;
  final String produto;
  final String endereco;
  final String descricao;
  final String imagem;
  final int quantidade;
  final double preco;

  Produto(
    this.produtoId,
    this.produto,
    this.endereco,
    this.descricao,
    this.imagem,
    this.quantidade,
    this.preco,
  );

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      json['produtoId'],
      json['produto'],
      json['endereco'],
      json['descricao'],
      json['imagem'],
      json['quantidade'],
      json['preco'],
    );
  }

  Map<String, dynamic> toJson() => {
    'produtoId': this.produtoId,
    'produto': this.produto,
    'endereco': this.endereco,
    'descricao': this.descricao,
    'imagem': this.imagem,
    'quantidade': this.quantidade,
    'preco': this.preco,
  };
}
