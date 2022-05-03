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
  Carro(this.qtdePortas, String marca, String modelo) : super(marca, modelo);
}

class Bicicleta extends Veiculo {
  Bicicleta(String marca, String modelo) : super(marca, modelo);
  @override
  void mover() {
    posicao += 2;
  }
}
