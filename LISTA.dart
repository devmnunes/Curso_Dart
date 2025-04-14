void main() {
  //LISTA É EM FORMATO DE KEY VALUE
                       // 0  'MATHEUS'
  List<String> pessoas = ['Matheus', 'João', 'Maria'];

  print(pessoas);

  print(pessoas.length); //PARA SABER O TAMANHO DA LISTA

  pessoas.add(
    'Marcelo',
  ); //PARA ADICIONAR NOVOS VALORES A LISTA, O NOVO VALOR IRA PARA O FINAL DA LISTA.
  print(pessoas);

  //PARA ADICIONAR NOVOS VALORES A LISTA COM A POSIÇÃO DO ITEM JÁ DEFINIDA.
  pessoas.insert(2, 'Marcelo');
  print(pessoas);

  //PARA REMOVER VALORES DA LISTA (USANDO KEY VALUE = POSIÇÃO DO ITEM)
  pessoas.removeAt(2);
  print(pessoas);

  //PARA VERIFICAR SE O VALOR EXISTE NA LISTA
  print(pessoas.contains('Maria'));

  //EXTRAI TODOS OS ITENS DA LISTA COMO UM CONTADOR
  int posicao = 1;
  pessoas.forEach((value) {
    print(value);
    posicao++;
  });
}
