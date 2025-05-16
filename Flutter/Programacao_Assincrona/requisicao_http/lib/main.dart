import 'dart:async';
import 'package:http/http.dart' as http;


void main() async {
  final future = http.get(Uri.https('www.example.com', '/'));
  future.then((response) {
    if (response.statusCode == 200) {
      print('Página carregada');
      } else {
        print('Error');
      }
  });

}
