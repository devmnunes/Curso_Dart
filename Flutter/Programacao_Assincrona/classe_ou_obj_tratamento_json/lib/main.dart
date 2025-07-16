import 'dart:async';
import 'dart:convert';
import 'package:classe_ou_obj_tratamento_json/dados/pokemons.dart';
import 'package:http/http.dart' as http;

void main() async {
  final uri = Uri.https('jsonplaceholder.typicode.com', '/todos/');
  final future = http.get(uri);

  future.then((response) {
    if (response.statusCode == 200) {
      print('Página Ok');

       Map<String, dynamic> dados = json.decode(response.body);

       //Dados todo = Dados(
       //dados['userId'], dados['id'], dados['title'], dados['completed']);
       Dados todo = Dados.fromJson(dados);
       print(todo.toJson());
    } else {
      print('Erro');
    }
  });
}
class Dados {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Dados(this.userId, this.id, this.title, this.completed);

  //Recebe String JSON como entrada e retorna um objeto da lingagem.
  factory Dados.fromJson(Map<String, dynamic> json) {
    return Dados(json['userId'], json['id'], json['title'], json['completed']);
  }

  //Gera JSON
   Map<String, dynamic> toJson() => {
    'userId': this.userId,
    'id': this.id,
    'title': this.title,
    'completed': this.completed,
  }; 
}
