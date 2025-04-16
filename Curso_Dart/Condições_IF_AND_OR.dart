void main(){
  String clima = 'Sol';
  int temperatura = 20;
  bool sair = true;

//|| significa 'OU'. EX: Se clima for == 'Sol' OU temperatura > 30;
  if (clima == 'Sol' || temperatura > 20){ 
    print('Vou sair de casa');
  } else {
    print('Vou ficar em casa');
  }

  //&& significa 'E'. EX: Se clima for == 'Sol' E temperatura > 30;
  if (clima == 'Sol' && temperatura > 20){ 
    print('Vou sair de casa');
  } else {
    print('Vou ficar em casa');
  }

  if ( (clima == 'Sol' && temperatura > 20) || sair == true){ 
    print('Vou sair de casa');
  } else {
    print('Vou ficar em casa');
  }
}