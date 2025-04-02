void main (){
  bool condicao = false;
  String nome = 'Matheus';
  String clima = 'Sol';

  print(condicao ?  'Condição Verdadeira': 'Condição Falsa' );
  
  print(nome == 'Matheus' ? 'Nome Ok' : 'Nome errado');

  print(2 > 3 ? 'Menor' : 'Maior ou igual');

  String menssagem = clima == 'Sol' ? 'Lindo dia ensolarado' : 'Tomara que saia sol';
  print(menssagem);

}