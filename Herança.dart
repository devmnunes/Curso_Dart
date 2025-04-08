void main() {
  Pessoa pessoa1 = new Pessoa('Matheus', 27);
  pessoa1.apresenta();

  Pai pai = new Pai('Marcos', 53, 'Manutenção');
  pai.apresenta();

  Filho filho = new Filho('Natalye', 30, 'Infermagem');
  filho.apresenta();
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(String this.nome, int this.idade);

  void apresenta() {
    print('Olá meu nome é $nome, eu tenho $idade anos.');
  }
}

// EXTENDS é usado para para herdar os ATRIBUTOS e MÉTODOS de outra CLASSE.
class Pai extends Pessoa {
  String profissao = '';

  // SUPER chama o construtor da classe Pai
  Pai(super.nome, super.idade, this.profissao);

  // OVERRIDE é usado para sobre escrever e modificar o método sem alterar o principal.
  @override
  void apresenta() {
    print(
      'Olá meu nome é $nome, eu tenho $idade anos e minha profissão é $profissao.',
    );
  }
}

class Filho extends Pessoa {
  String curso;

  Filho(super.nome, super.idade, this.curso);

  @override
  void apresenta() {
    print(
      'Olá meu nome é $nome, eu tenho $idade anos e estou cursando $curso.',
    );
  }
}
