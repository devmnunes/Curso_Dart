import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; 
import 'dart:async';

void main() async {

  final uri = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
  final future = http.get(uri);

  future.then( (response) {
      if (response.statusCode == 200) {
        print('Pagina carregada OK');

        Map<String, dynamic> dados = json.decode(response.body);

        Dados todo = Dados.fromJson(dados);
        
        print(todo.title);
        
      } else {
        print('Erro!!!');
      }
  });
}

class Dados {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Dados(this.userId, this.id, this.title, this.completed);

  factory Dados.fromJson(Map json) {
    return Dados(
          json['userId'],
          json['id'], 
          json['title'], 
          json['completed'],
        );
  }
 //CONVERTE PARA JSON
  Map<String, dynamic> toJson() => {
    'userId' : this.userId,
    'id' : this.id,
    'title' : this.title,
    'completed' : this.completed,
  };

}


    
