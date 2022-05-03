class Veiculo {
  String marca;
  String modelo;
  int posicao = 0;

  Veiculo(this.marca, this.modelo);

  void mover() {
    posicao += 5;
  }
}

class Carro extends Veiculo {
  int qtdePortas;
  int combustivel = 100;
  Pessoa motorista;
  Carro(this.qtdePortas, String marca, String modelo, this.motorista)
      : super(marca, modelo);
  void mover() {
    posicao += 5;
    combustivel -= 1;
  }
}

class Pessoa {
  String nome;
  int idade;
  Pessoa(this.nome, this.idade);
}

class Bicicleta extends Veiculo {
  Bicicleta(String marca, String modelo) : super(marca, modelo);
  @override
  void mover() {
    posicao += 2;
  }
}
