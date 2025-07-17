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

       //USADO PARA O TRATAMENTO DE 1 DADO JSON A PARTIR DE CLASSE
       Dados todo = Dados(
       dados['userId'], dados['id'], dados['title'], dados['completed']);

       print(dados);

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

}
