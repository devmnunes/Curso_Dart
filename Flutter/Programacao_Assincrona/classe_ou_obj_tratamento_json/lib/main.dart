import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
  final future = http.get(uri);

  future.then((response) {
    if (response.statusCode == 200) {
      print('Página Ok');

      Map<String, dynamic> dados = json.decode(response.body);

      /* Todo todo = Todo(
        dados['userId'],
        dados['id'], 
        dados['title'],
        dados['completed'],
      ); */

      Todo todo = Todo.fromJson(dados);

      print(dados);
    } else {
      print('Erro');
    }
  });
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo(this.userId, this.id, this.title, this.completed);

  factory Todo.fromJson(Map json) {
    return Todo(json['userId'], json['id'], json['title'], json['completed']);
  }
}
