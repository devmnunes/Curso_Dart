import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


void main() async {
  final uri = Uri.https('jsonplaceholder.typicode.com', '/'); //REQUISITA PAGINA
  final future =  http.get(uri);

  future.then((response) {
    if (response.statusCode == 200) {
        print('Página carregada');
        final result = jsonDecode(response.body); //DECODIFICA O RESULTADO DA PAGINA
        return result;
        
      } 
      if (response.statusCode == 301) {
        print('Página movida permanentemente');
      }
      if (response.statusCode == 404) {
        print('Página não encontrada');
      }
      if (response.statusCode == 500) {
        print('Erro interno no servidor');
      }
  });
  future.catchError((onError) => print('Error'));
  future.whenComplete(() => print('Future completo'));
}
