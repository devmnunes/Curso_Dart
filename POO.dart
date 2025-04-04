void main() {
  
  Pessoa p1 = Pessoa();
  p1.nome = 'Matheus';
  p1.idade = 27;
  p1.telefone = '19 99983-9190';

  print('Idade: ${p1.idade} anos');
  print('Telefone: ${p1.telefone}');

  //Pessoa pessoa1 = Pessoa('Matheus', 27, '19 9 99839190');

  p1.apresenta();
}

class Pessoa {
  // Atributos da Classe - Variaveis
  String nome = '';
  int idade = 0;
  String telefone = '';

  // Construtor Classe
 /* 
 Pessoa(String nome, int idade, String telefone) {
    this.nome = nome;
    this.idade = idade;
    this.telefone = telefone;
  }
  */

  //Métodos da Classe - Funções
  void apresenta() {
    print('Olá eu me chamo ${this.nome}, tenho ${this.idade} anos, meu telefone é ${this.telefone}.');
  }
}
