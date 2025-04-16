void main() {
  Pessoa pessoa1 = Pessoa('Matheus', 27, '19 99983-9190');
  pessoa1.apresenta();
}

class Pessoa {
  // Atributos da Classe - Variaveis
  String nome = '';
  int idade = 0;
  String telefone = '';

  // Construtor Classe
  Pessoa(this.nome, this.idade, this.telefone);

  //Métodos da Classe - Funções
  void apresenta() {
    print(
      'Olá eu me chamo ${this.nome}, tenho ${this.idade} anos, meu telefone é ${this.telefone}.',
    );
  }
}
