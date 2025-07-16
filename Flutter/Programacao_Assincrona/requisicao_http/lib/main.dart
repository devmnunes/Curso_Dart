import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


void main() async {
  //REQUISITA PAGINA
  final uri = Uri.https('jsonplaceholder.typicode.com', '/'); 
  final future =  http.get(uri);

  future.then((response) {
    if (response.statusCode == 200) {
        print('Página carregada');
        //DECODIFICA O RESULTADO DA PAGINA
        final result = jsonDecode(response.body); 
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
