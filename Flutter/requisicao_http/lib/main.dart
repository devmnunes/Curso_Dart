import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  Uri url = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
  final future = http.get(url);

  future.then((response) {
    if (response.statusCode == 200) {
      print('Página carregada Ok');
      //print(json.decode(response.body));
      Map<String, dynamic> dados = json.decode(response.body);
      print(dados);
      print(dados['id']);
    } else {
      print('Erro');
    }
  });
}
