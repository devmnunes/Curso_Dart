void main() {
  //Mundo mundo1 = new Mundo();
  Mundo.gravidade = 20;
  print(Mundo.gravidade);
  Mundo.duplicaGravidade();
}

class Mundo {
  //O operador STATIC serve iniciar a variaver de uma CLASSE sem precisar iniciar a classe
  static double gravidade = 9.81;
  Mundo();

  static void duplicaGravidade() {
    gravidade = gravidade * 2;
  }
}
