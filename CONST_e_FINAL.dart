void main() {

                           //CONST - CONSTANTE
  // O operador CONST é usado para DEFINIR o valor de uma variavel e NÃO PODEREMOS ALTERAR MAIS ESSE VALOR.
  const double pi = 3.14159;
  print(pi);

  //NESSE EXEMPLO ABAIXO O CÓDIGO APRESENTARIA UM ERRO
   /* const double pi = 3.14159;
  pi = 57.8945
  print(pi); */

//RESUMINDO USE CONST QUANDO O VALOR DA VARIAVEL JÁ É CONHECIDO NA HORA QUE ESTIVER ESCREVENDO O CÓDIGO.

                           //FINAL

//FINAL TEM A MESMA FINALIDADE DE NÃO MUDAR O VALOR, PORÉM DEVE SER USADO QUANDO NÃO SABEMOS O VALOR FINAL DA VARIAVEL, ELA SÓ IRA ATRIBUIR UM VALOR A VARIAVEL, QUANDO O CÓDIGO ESTIVER RODANDO EM EXECUÇÃO.

// O CÓDIGO ABAIXO MOSTRA A DATA E O HORARIO DA HORA QUE O PROGRAMA FOR INICIADO.
final DateTime data = new DateTime.now();
print(data);

//NÃO CONSEGUIRIAMOS USAR ESSE MESMO CÓDIGO USANDO CONST .
}
