import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main () async {
  final uri = Uri.https('jsonplaceholder.typicode.com', '/todos/'); //'todos' REQUISITA VARIOS DADOS DE UMA API
  final future = http.get(uri);

  future.then((response) {
     if(response.statusCode == 200){
      print('Página carregada OK');

    //LIST USADO PARA LER VARIOS DADOS DE UMA API DE UMA VEZ SÓ
     var list = json.decode(response.body) as List; 

    //MAPEANDO A LIST 
        list.forEach((element){
          print(element['title']);
        });
     }
     else {
      print('Erro!');
     }
  });
}