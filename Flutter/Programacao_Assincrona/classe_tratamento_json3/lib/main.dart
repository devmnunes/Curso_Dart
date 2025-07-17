import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:async';

void main () async {
    final uri = Uri.http('jsonplaceholder.typicode.com', '/todos/');
    final future = http.get(uri);


    //Codigo para ler uma lista de dados Json
    future.then( (response) {
        if (response.statusCode == 200) {
            print('Página carregada OK');   

            var lista = json.decode(response.body) as List;

            var minhaLista = Dados(lista);

            minhaLista.dados.forEach((element) {
              var todo = Dado.fromJson(element);
              print(todo.title);
            }); 
        }
        else {
          print('Erro');
        }
    });
}

class Dados {
  final List dados;

  Dados(this.dados);
}


class Dado {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Dado(this.userId, this.id, this.title, this.completed);

  factory Dado.fromJson (Map json) {
    return Dado(
      json['userId'],
      json['id'],
      json['title'],
      json['completed'],
    );
  }

  Map<String, dynamic> toJson() => {
      'userId': this.userId,
      'id': this.id,
      'title': this.title,
      'completed': this.completed,
  };
  
}