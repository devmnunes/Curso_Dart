import 'Construtor_Classe.dart';

void main(){

List<Pessoa> pessoas = [Pessoa('João', 20), Pessoa('Pedro', 17), Pessoa('Maria', 75), Pessoa('Leticia', 22)];

print(pessoas[1].nome);
print('${pessoas[1].idade} Anos');

/*
 Pessoa pessoa1 = Pessoa('João', 20);
 pessoa1.apresenta();
*/

}

class Pessoa {
 String nome;
  int idade;

  Pessoa( this.nome, this.idade);

  void apresenta(){
    print('Meu nome é $nome e tenho $idade anos.');
  }
}