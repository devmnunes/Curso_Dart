import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  //URL
  Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/1');

  //ATRIBUINDO A URL A UMA VARIAVEL
  final future = http.get(uri); //REQUISITANTO A URL

  //Método .Then() permite execulte o código após uma operação assincrona, recebendo o valor resultante ou lidando com um erro

  future.then((response) {

    //VERIFICA O RESULTADO DA REQUISIÇÃO HTTP
    if (response.statusCode == 200) {
      print('Página Carregada OK');

      //DECODIFICANDO OS DADOS DA API, PARA SER USADOS
      Map<String, dynamic> dados = json.decode(response.body);
      print(dados['title']);

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
