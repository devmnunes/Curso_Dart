enum Telas { SplashScreen, HomePage, Login }

void main() {
  Telas tela = Telas.HomePage;

  switch (tela) {
    case Telas.SplashScreen:
      print('Logo');
      break;

    case Telas.HomePage:
       print('Página Inicial');
      break;
      
    case Telas.Login:
       print('Entrar');
      break;
  }
}
