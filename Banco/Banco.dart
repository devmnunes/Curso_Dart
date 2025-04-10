import 'Banco.dart';

void main() {
  ContaBanco conta1 = new ContaBanco();
  conta1.cliente = 'Matheus';
  conta1.setConta = 1234;
  conta1.setTipoConta = 'CP';
  conta1.abrirConta();
  conta1.statusConta();
}

class ContaBanco {
  // ATRIBUTOS
  String cliente = '';
  int conta = 0;
  String tipoConta = '';
  double saldo = 0;
  bool status = false;

  //CONSTRUTOR
   /* ContaBanco(String this.cliente, int this.conta, String this.tipoConta, double this.saldo, bool this.status,); */

  // MÉTODOS
  void abrirConta() {
    this.getTipoConta;
    if (tipoConta == 'CC') {
      this.saldo = 50;
    } else if (tipoConta == 'CP') {
      this.saldo = 150;
    }
  }

  void fecharConta() {
    this.getStatus == true;
    if (getSaldo > 0) {
      print(
        'Não foi possivel encerrar sua conta, saque o saldo restante da sua conta.',
      );
    } else if (getSaldo < 0) {
      print(
        'Não foi possivel encerrar sua conta, veja se há debitos em sua conta.',
      );
    } else {
      print('Conta encerrada com sucesso.');
      this.setStatus = false;
    }
  }

  void sacar(double valor) {
    if (getStatus == true) {
      if (getSaldo > valor) {
        setSaldo = getSaldo - valor;
      }
    }
  }

  String get getCliente {
    return cliente;
  }

  set setCliente(String c) {
    cliente = c;
  }

  int get getConta {
    return conta;
  }

  set setConta(int c) {
    conta = c;
  }

  String get getTipoConta {
    return tipoConta;
  }

  set setTipoConta(String t) {
    tipoConta = t;
  }

  double get getSaldo {
    return saldo;
  }

  set setSaldo(double s) {
    s = saldo;
  }

  bool get getStatus {
    return status;
  }

  set setStatus(bool s) {
    status = s;
  }

  statusConta() {
    print('Cliente....: ${this.getCliente}');
    print('Conta....: ${this.getConta}');
    print('Tipo Conta....: ${this.getTipoConta}');
    print('Saldo....: ${this.getSaldo}');
    print('Status da Conta....: ${this.getStatus}');
  }
}
