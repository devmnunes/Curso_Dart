void main() {
  ContaBanco conta1 = ContaBanco('Matheus Nunes', 123, 'CC', 10.000, true);
  conta1.statusConta();
}

class ContaBanco {
  // ATRIBUTOS
  String cliente;
  int conta;
  String tipoConta;
  double saldo;
  bool status;

  //CONSTRUTOR
  ContaBanco(String this.cliente, int this.conta, String this.tipoConta,
      double this.saldo, bool this.status);

  // MÉTODOS

  void abrirConta() {
    this.getTipoConta;
    this.setStatus = true;
    if (tipoConta == 'CC') {
      this.setSaldo = 50;
    } else if (tipoConta == 'CP') {
      this.setSaldo = 150;
    }
  }

  String get getCliente {
    return cliente;
  }

  set setCliente(String cliente) {
    cliente = cliente;
  }

  int get getConta {
    return conta;
  }

  set setConta(int conta) {
    conta = conta;
  }

  String get getTipoConta {
    return tipoConta;
  }

  set setTipoConta(String tipoConta) {
    tipoConta = tipoConta;
  }

  double get getSaldo {
    return saldo;
  }

  set setSaldo(double saldo) {
    saldo = saldo;
  }

  bool get getStatus {
    return status;
  }

  set setStatus(bool status) {
    status = status;
  }

  statusConta() {
    print('Cliente....: ${this.getCliente}');
    print('Conta....: ${this.getConta}');
    print('Tipo Conta....: ${this.getTipoConta}');
    print('Saldo....: ${this.getSaldo}');
    print('Status da Conta....: ${this.getStatus}');
  }
}
