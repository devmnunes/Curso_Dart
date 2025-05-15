import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  Future future = getPosts();

  //Callbacks para tratar o valor e o erro
  future.then((value) => print(value)).catchError((error) => print(error));
}

Future getPosts() async {
  final client = http.Client(); //Cria uma instancia de client

  try {
    final uri = Uri.parse(
      'https://jsonplaceholder.typicode.com/posts',
    ); //REQUISITA API

    final response = await client.get(uri); //AGUARDA A RESPOSTA DA API

    final result = jsonDecode(response.body); //DECODIFICA O RESULTADO DA API

    return result; // RETORNA O RESULTADO
  } catch (e) {
    print('error: $e');
  }
}
