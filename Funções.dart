//FUNÇÕES (VOID) NÃO TEM RETORNO

void main() {
                        //ESPECIFICANDO O PARAMETRO TELEFONE POR NÃO SER OBRIGATORIO.
  minhaFuncao('Matheus', telefone:'');

//int valor = 10;

//print(eParOuImpar(2));

//print(multiplicaDois(5));

//print('O dobro de $valor é ${multiplicaDois(valor)}');

/*  printNome("Matheus");
  printNome("Thiago");
  printNome("Lucas");
  printNome("Leticia"); */

  // printNomeIdade('Matheus', 28);
}
//FUNÇÕES EM DART SEMPRE APÓS O MAIN.



                              // {String? telefone} ENVELOPAR O PARAMETRO COM CHAVES O TORNA OPCIONAL.
                              // MAS DEVE ESPECIFICAR O PARAMETO NA HORA DE CHAMAR A FUNÇÃO.
                              // ? DEPOIS DA TIPAGEM TORNA O PARAMETRO NULO.
void minhaFuncao(String nome, {String? telefone}) {
  print('Nome: $nome, Telefone: $telefone');
}
  //OU PARA REDUZIR O TAMANHO DO CÓDIGO SE A FUNÇÃO FOR PEQUENA USE ESSE TIPO.

 void minhaFuncao2(String nome, {String? telefone}) => print('Nome: $nome, Telefone: $telefone');

int multiplicaDois(int valor) {
  return valor * 2;
}

eParOuImpar(int numero) {
  if (numero % 2 == 0) {
    print("O número é PAR!");
  } else {
    print('O número é IMPAR!');
  }

  void printNomeIdade(String nome, int idade) {
    print('Nome.........: $nome');
    print('Idade.........: $idade');
  }

  void printNome(String nome) {
    print('Nome.........: $nome');
  }
}
