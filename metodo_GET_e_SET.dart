void main() {
  Pessoa pessoa1 = Pessoa('Matheus', 27, '19 9 99839190');
  print(pessoa1.idade);
}

class Pessoa {
  // Atributos da Classe - Variaveis
  String nome = '';
  int _idade = 0;
  String telefone = '';

  // Construtor Classe
  Pessoa(this.nome, this._idade, this.telefone);

  // GET = PEGAR | SET =  DEFINE SETTAR
 void set idade(int idade) {
    this._idade = idade;
  }
  
int get idade {
  return this._idade;
}

  //Métodos da Classe - Funções
  void apresenta() {
    print(
      'Olá eu me chamo ${this.nome}, tenho ${this._idade} anos, meu telefone é ${this.telefone}.',
    );
  }
}
