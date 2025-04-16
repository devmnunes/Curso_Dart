void main() {
  String nome = 'Matheus Nunes';
  //Verificar  o comprimento da frase
  print(nome.length);

  // Converte o texto para Maiusculas
  // print(nome.toUpperCase());

  // Converte o texto para Minusculas.
  // print(nome.toLowerCase());

  // Remove os espaços das Strigs
  //print(nome.trim());

  //Coloca Espaço na esquerda.
  // print(nome.padLeft(30));

  //Coloca Espaço na direita.
  // print(nome.padRight(30));

  //Verifica se há o texto a palavra desejada.
  /* if (nome.contains('Matheus')) {
    print('Existe o nome Matheus');
  } else {
    print('Não contém o nome Matheus');
  } */

  //Printa a Stringbno valor inicial do parametro e vai até o valor final parametrizado EX: Math
  //print(nome.substring(0, 4));

  //Printa a posição do 1º espaço da String
  //print(nome.indexOf(' '));

  //Usando os dois exemplos acima podemos printar o primeiro nome da pessoa usando o comando substring, com o parametro inicial 0 até o primeiro espaço da String.
 // print(nome.substring(0, nome.indexOf(' ')));

  //Quebra uma String em partes, usando um separador a sua escolha, no exemplo abaixo usei o espaço, e retorna uma LISTA com cada parte separada EX: [Matheus, Nunes]
  print(nome.split(''));

  //Como é uma LISTA você pode acessar os elementos. EX: [Matheus]
  print(nome.split('')[0]);
}
