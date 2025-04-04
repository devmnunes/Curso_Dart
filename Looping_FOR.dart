void main() {

  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      print('($i , $j)');
    }
  }

  
  //Contador de 1 a 10.
  for (int i = 0; i <= 10; i++) {
    print(i);
  }

  //Contador de 10 a 0.
  for (int i = 10; i >= 0; i--) {
    print(i);
  }

  //Contador de 0 a 10, pulando de 2 em 2.
  for (int i = 0; i >= 10; i += 2) {
    print(i);
  } 
}
