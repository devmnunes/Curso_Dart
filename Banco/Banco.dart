import 'Banco.dart';

void main() {
  ContaBanco conta1 = ContaBanco('Matheus Nunes', 123, 'CC', 10.000, true);
  conta1.statusConta();
}

class ContaBanco {
  // ATRIBUTOS
  String _cliente;
  int _conta;
  String _tipoConta;
  double _saldo;
  bool _status;

  //CONSTRUTOR
  ContaBanco(
    String this._cliente,
    int this._conta,
    String this._tipoConta,
    double this._saldo,
    bool this._status,
  );

  // MÉTODOS
  void abrirConta() {
    this.tipoConta;
    this.status;
    if (tipoConta == 'CC') {
      this.saldo = 50;
    } else if (tipoConta == 'CP') {
      this.saldo = 150;
    }
  }

  void fecharConta() {
    this.status;
    if (saldo > 0) {
      print(
        'Não foi possivel encerrar sua conta, saque o saldo restante da sua conta.',
      );
    } else if (saldo < 0) {
      print(
        'Não foi possivel encerrar sua conta, veja se há debitos em sua conta.',
      );
    } else {
      print('Conta encerrada com sucesso.');
      this.status = false;
    }
  }

  void sacar(double valor) {
    if (status == true) {
      if (saldo > valor) {
        saldo = saldo - valor;
      }
    }
  }

  String get cliente {
    return this._cliente;
  }

  void set cliente(String cliente) {
    this._cliente = cliente;
  }

  int get conta {
    return this._conta;
  }

  void set conta(int conta) {
    this._conta = conta;
  }

  String get tipoConta {
    return this._tipoConta;
  }

  void set tipoConta(String tipoConta) {
    this._tipoConta = tipoConta;
  }

  double get saldo {
    return this._saldo;
  }

  void set saldo(double saldo) {
    this._saldo = saldo;
  }

  bool get status {
    return this._status;
  }

  set status(bool status) {
    this._status = status;
  }

  statusConta() {
    print('Cliente....: ${this.cliente}');
    print('Conta....: ${this.conta}');
    print('Tipo Conta....: ${this.tipoConta}');
    print('Saldo....: ${this.saldo}');
    print('Status da Conta....: ${this.status}');
  }
}
