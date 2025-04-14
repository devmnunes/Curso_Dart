void main() {
  // USAR O MAP QUANDO NÃO QUER UM KEY NUMERICO E SIM UM IDENTIFICADOR
  Map<int, String> numeros = Map();
  //KEY   VALUE
  numeros[1] = 'Um';
  numeros[2] = 'Dois';
  numeros[3] = 'Três';
  numeros[4] = 'Quatro';
  numeros[4] = 'Cinco';

  Map<String, String> estados = Map();
  estados['SP'] = 'São Paulo';
  estados['RJ'] = 'Rio de Janeiro';
  estados['BA'] = 'Bahia';
  estados['MT'] = 'Mato Grosso';

  print(estados.keys);
  print(estados.values);

  estados.forEach((key, value){
    print(key);
    print(value);
  });

  print(estados['SP']);
}
