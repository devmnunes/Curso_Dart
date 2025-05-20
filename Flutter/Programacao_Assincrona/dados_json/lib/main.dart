import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  Uri uri = Uri.https(
    'jsonplaceholder.typicode.com',
    '/todos/1',
  ); //ATRIBUINDO A URL A UMA VARIAVEL
  final future = http.get(uri); //REQUISITANTO A URL

  future.then((response) {
    //RECEBE O RESULTADO DA REQUISIÇÃO HTTP
    if (response.statusCode == 200) {
      //VERIFICA SE A PÁGINA FOI CARREGADA
      print('Página Carregada OK');

      Map<String, dynamic> dados = json.decode( response.body); //DECODIFICANDO OS DADOS DA API, PARA SER USADOS
  
  Todo todo = Todo(dados['userId'], dados['id'], dados['title'], dados['completed']);
      //print(dados); //ACESSANDO OS DADOS
    } else {
      print('Error!');
    }
  });
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo(this.userId, this.id, this.title, this.completed);
}
