void main() {
  Pessoa pessoa1 = Pessoa('Matheus', 27, '19 9 99839190');
  pessoa1.apresenta();
}

class Pessoa {
  // Atributos da Classe - Variaveis
  String _nome = '';
  int _idade = 0;
  String _telefone = '';

  // Construtor Classe
  Pessoa(this._nome, this._idade, this._telefone);

  
  // GET = PEGAR | SET =  MODIFICA SETTAR
  String get nome => _nome;

  set nome(String nome) {
    this._nome;
  }

  int get idade => _idade;

  set idade(int idade) {
    this._idade = idade;
  }

  String get telefone => _telefone;

  set telefone(String telefone) {
    this._telefone = telefone;
  }

  //Métodos da Classe - Funções
  void apresenta() {
    print(
        'Olá eu me chamo ${this.nome}, tenho ${this.idade} anos, meu telefone é ${this.telefone}.');
  }
}
