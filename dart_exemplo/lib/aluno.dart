class Aluno {
  bool tristeza;
  String nome;
  int idade;
  double altura;

  Aluno(this.tristeza, this.nome, this.altura, this.idade);

  void exibir() {
    print(nome);
    print(idade);
    print(altura);
    print(tristeza == true ? "Está triste" : "Não está triste");
  }
}

class Tecnico extends Aluno {
  String curso;
  Tecnico(bool tristeza, String nome, int idade, double altura, this.curso)
      : super(tristeza, nome, altura, idade);

  void exibir() {
    super.exibir();
    print(curso);
  }
}
