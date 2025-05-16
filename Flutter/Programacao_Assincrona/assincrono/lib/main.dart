import 'dart:async';

void main() async {
  print(1);
  print(2);
  print(3);

  //VARIAVEL ASSINCRONA VARIAVEL TEMPORARIA
  /*Future<void> quatro = Future.delayed(
    Duration(seconds: 3),
    );
    quatro.then((value) => print(4)); */

  //"AWAIT" ESPERA O RESULTADO DE UMA OPERAÇÃO ASSINCRONA, ANTES DE CONTINUAR A EXECUÇÃO DO CÓDIGO.
  await quatro(); 

  print(5);
}
//FUNÇÃO ASSINCRONA
Future<void> quatro() async {

  return Future.delayed(Duration(seconds: 3), () => print(4));
}
