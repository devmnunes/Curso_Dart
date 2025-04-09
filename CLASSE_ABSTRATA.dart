import 'dart:ffi';

void main() {
  Jogador jogador1 = Jogador(4, 'Indiano');
  Inimigo inimigo1 = Inimigo(4, 'BROLY');
  jogador1.status();
  inimigo1.status();

  if (inimigo1.getPosicaoX() == jogador1.getPosicaoX()) {
    print('Luta');
  }
}

// CLASSE ABSTRATA É UMA CLASSE FEITA DE MOLDE PARA OUTRAS CLASSES, VOCÊ PODE ATRIBUIR ATRIBUTOS E MÉTODOS, SÓ NÃO PODE INSTANCIAR UM OBJETO APARTIR DELA
abstract class Personagem {
  int posicaoX = 0;
  int posicaoY = 0;
  String nome;

  Personagem(this.posicaoX,  this.nome);

  void status() {
    print('$nome está na posição $posicaoX e $posicaoY');
  }

  int getPosicaoX() {
    return posicaoX;
  }
}

class Jogador extends Personagem {
  Jogador(super.posicaoX, super.nome);
}

class Inimigo extends Personagem {
  Inimigo(super.posicaoX, super.nome);
}
