import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final uri = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
  final future = http.get(uri);

  future.then((response) {
    if (response.statusCode == 200) {
      print('Página Ok');

      Map<String, dynamic> dados = json.decode(response.body);

      DadosJson todos = DadosJson.fromJson(dados);

      print(todos.title);
      print(todos.toJson());
    } else {
      print('Erro');
    }
  });
}

class DadosJson {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  DadosJson(this.userId, this.id, this.title, this.completed);

  //Recebe String JSON como entrada e retorta um objeto da lingagem.
  factory DadosJson.fromJson(Map json) {
    return DadosJson(
      json['userId'],
      json['id'],
      json['title'],
      json['completed'],
    );
  }

  //Recebe um objeto da linguagem e converte para JSON
  Map<String, dynamic> toJson() => {
    'userId': this.userId,
    'id': this.id,
    'title': this.title,
    'completed': this.completed,
  };
}
