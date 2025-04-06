void main() {
  ContaBanco conta1 = ContaBanco('Matheus Nunes', 123, 'CC', 10.000, true);
  conta1.statusConta();
}

class ContaBanco {
  // ATRIBUTOS
  String _cliente = '';
  int _conta = 0;
  String _tipoConta = '';
  double _saldo = 0;
  bool _status = true;

  //CONSTRUTOR
  ContaBanco(String this._cliente, int this._conta, String this._tipoConta,
      double this._saldo, bool this._status);

  // MÉTODOS

  String get cliente => _cliente;

  set cliente(String cliente) {
    _cliente = cliente;
  }

  int get conta => _conta;

  set conta(int conta) {
    _conta = conta;
  }

  String get tipoConta => _tipoConta;

  set tipoConta(String tipoConta) {
    _tipoConta = tipoConta;
  }

  double get saldo => _saldo;

  set saldo(double saldo) {
    _saldo = saldo;
  }

  bool get status => _status;

  set status(bool status) {
    _status = status;
  }

  statusConta() {
    print('Cliente....: ${this._cliente}');
    print('Conta....: ${this._conta}');
    print('Tipo Conta....: ${this._tipoConta}');
    print('Saldo....: ${this._saldo}');
    print('Status da Conta....: ${this._status}');
  }
}
