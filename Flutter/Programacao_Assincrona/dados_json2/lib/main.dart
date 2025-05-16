import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main () async {
  final uri = Uri.https('jsonplaceholder.typicode.com', '/todos/'); //REQUISITA VARIOS DADOS DE UMA API
  final future = http.get(uri);

  future.then((response) {
     if(response.statusCode == 200){
      print('Página carregada OK');

     var list = json.decode(response.body) as List; //

        list.forEach((element){
          print(element);
        });

     }
     else {
      print('Error!');
     }
  });
}