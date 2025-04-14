import 'Construtor_Classe.dart';

void main() {
  List<Pessoa> pessoas = [
    Pessoa('João', 20),
    Pessoa('Pedro', 17),
    Pessoa('Maria', 75),
    Pessoa('Leticia', 22),
  ];

  print(pessoas[1].nome);
  print('${pessoas[1].idade} Anos');

  pessoas.add(Pessoa('Ana', 11));
  pessoas.removeAt(1);

  pessoas.forEach((Pessoa pessoa) {
    print(pessoa.nome);
    print(pessoa.idade);
  });
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void apresenta() {
    print('Meu nome é $nome e tenho $idade anos.');
  }
}
