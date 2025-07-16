import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main () async {
  final uri = Uri.https('https:pokeapi.co', '/api/v2/pokemon/'); //'todos' REQUISITA VARIOS DADOS DE UMA API
  final future = http.get(uri);

  future.then((response) {
     if(response.statusCode == 200){
      print('Página carregada OK');

    //DECODIFICANDO OS DADOS DA API, PARA SER 
      
    //LIST USADO PARA LER VARIOS DADOS DE UMA API DE UMA VEZ SÓ
     var list = json.decode(response.body) as List; 

        list.forEach((element){
          print(element['results']);
        });
     }
     else {
      print('Erro!');
     }
  });
}