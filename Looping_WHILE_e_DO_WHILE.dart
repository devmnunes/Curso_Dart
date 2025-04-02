//WHILE SIGNIFICA FAÇA ENQUANTO
// DO WHILE REALIZA O CÓDIGO PELO MENOS UMA VEZ

void main() {


//EXEMPLO (DO WHILE)
bool condicao = false;
  int i = 1;

  do {
    print(i);
    i++;
    if (i > 5) {
      condicao = false;
    }
  } while (condicao);

//EXEMPLO (WHILE)
 /* bool condicao = true;
  int i = 1;

  while (condicao) {
    print(i);
    i++;

    if (i > 5) {
      condicao = false;
    }
  }

 // EXEMPLO (WHILE)
  int i = 0;
  while (i < 10) {
    i++; //<-- SEMPRE INCREMENTE UM VALOR NA VARIAVEL, SENÃO O CÓDIGO DA BUG
    print(i);
  } 
  */
}
