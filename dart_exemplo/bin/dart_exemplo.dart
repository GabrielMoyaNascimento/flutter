import 'dart:io';

import '../lib/aluno.dart';
import '../lib/veiculo.dart';

void main(List<String> arguments) {
  // print('\n-------------');

  // var veiculo = Veiculo("Ford", "Ká");

  // print(veiculo.posicao);
  // veiculo.mover();
  // print(veiculo.posicao);

  // var pessoa = Pessoa("Lucas", 22);
  // var carro = Carro(4, "Renault", "Clio", pessoa);
  // print("O nome do motorista é " + carro.motorista.nome);

  // carro.mover();
  // print(carro.posicao);
  // print(carro.combustivel);

  // carro.mover();
  // print(carro.posicao);
  // print(carro.combustivel);

  // var bicicleta = Bicicleta("Caloi", "MX");
  // bicicleta.mover();
  // print(bicicleta.posicao);

  // var aluno1 = Aluno(true, "Marcos", 1.6, 25);
  // var aluno2 = Aluno(false, "Carlos", 1.9, 17);
  // var aluno3 = Tecnico(true, "Carol", 18, 1.67, "Informatica");

  // aluno3.exibir();
  // mostrarPessoa(aluno3);

  // print('\n-------------');

  // print('Hello Word');

  // print('\n----String-----\n');

  // String texto;
  // texto = "Seu texto aqui";
  // print("Olha aqui:" + texto);

  // print('\n----Input-----');

  // print('\nDigite um texto');
  // String? valor = stdin.readLineSync();
  // print('\nResposta: $valor');

  // print('\n---Calculadora----');

  // print('\nDigite o primeiro valor:');
  // double? num1 = double.parse(stdin.readLineSync()!);
  // print('\nDigite o segundo valor:');
  // double? num2 = double.parse(stdin.readLineSync()!);

  // double soma = somar(num1, num2);
  // double multiplicar = mult(num1, num2);
  // double subtrair = sub(num1, num2);
  // double dividir = divi(num1, num2);

  // print("A soma dos valores é: $soma");
  // print("A multiplicação dos valores é: $multiplicar");
  // print("A subtração dos valores é: $subtrair");
  // print("A divisão dos valores é: $dividir");

  // print('\n----Verificar-Idade-----');

  // print('\nDigite sua idade:');
  // int? idade = int.parse(stdin.readLineSync()!);
  // String resultadoIdade = verificarIdade(idade);
  // print(resultadoIdade);

  // print('\n-----Maior-Valor-----');

  // print('\nDigite o primeiro número:');
  // double? num3 = double.parse(stdin.readLineSync()!);
  // print('\nDigite o segundo número:');
  // double? num4 = double.parse(stdin.readLineSync()!);
  // String resultadoMaiorValor = maiorValor(num3, num4);
  // print(resultadoMaiorValor);

  // print('\n-----Definir-Média-Notas-----');

  // print('\nDigite a primeira nota:');
  // double? nota1 = double.parse(stdin.readLineSync()!);
  // print('\nDigite a segunda nota:');
  // double? nota2 = double.parse(stdin.readLineSync()!);
  // print('\nDigite a terceira nota:');
  // double? nota3 = double.parse(stdin.readLineSync()!);
  // String resultadoMediaNotas = verificarMediaGeral(nota1, nota2, nota3);
  // print(resultadoMediaNotas);

  // print('\n-----Tabuada-----');
  // print('\nDigite o numero:');
  // int? numero = int.parse(stdin.readLineSync()!);
  // print('\n-----Calculando-----');
  // int resultadoTabuada = tabuada(numero);
  // print(resultadoTabuada);

  // print('\n-----Listas-----');

  // var lista = [1, 20, 53, 13, 13];
  // lista.add(12);

  // print(lista[2]);

  // for (int i = 0; i < lista.length; i++) {
  //   print(lista[i]);
  // }

  // for (var numero in lista) {
  //   print(numero);
  // }

  // for (var numero in lista) {
  //   if (numero == 13) {
  //     print("está na lista");
  //     break;
  //   }
  // }

  // print('\n-----Lista-de-numeros-pares-----');

  // pares();

  // print('\n-----Verificar-numero-na-lista-----');

  // print('\nDigite o numero:');
  // int? numero = int.parse(stdin.readLineSync()!);
  // String result = encontrarNumero(numero);
  // print(result);

  print('\n-----Verificar-valor-nulo-----');
  int? numero1 = null;
  int? numero2 = 1;
  funcaonula(numero1, numero2);
}

// Funções

funcaonula(int? valor1, int? valor2) {
  if (valor1 != null && valor2 != null) {
    int resultado = valor1 + valor2;
    print(resultado);
  } else {
    print("Valores inválidos");
  }
}


// void mostrarPessoa(Aluno a) {
//   a.exibir();
// }
// somar(num1, num2) {
//   double resultado = num1 + num2;
//   return resultado;
// }

// sub(num1, num2) {
//   double resultado = num1 - num2;
//   return resultado;
// }

// mult(num1, num2) {
//   double resultado = num1 * num2;
//   return resultado;
// }

// divi(num1, num2) {
//   double resultado = num1 / num2;
//   return resultado;
// }

// verificarIdade(idade) {
//   if (idade <= 12) {
//     return "Você é uma criança";
//   } else if (idade <= 18) {
//     return "Você é um adolescente";
//   } else if (idade <= 59) {
//     return "Você é um adulto/a";
//   } else {
//     return "Você é um idoso/a";
//   }
// }

// maiorValor(num1, num2) {
//   if (num1 > num2) {
//     return "O primeiro número é maior";
//   } else if (num2 > num1) {
//     return "O segundo número é maior";
//   } else {
//     return "Os números são iguais";
//   }
// }

// verificarMediaGeral(nota1, nota2, nota3) {
//   double media = (nota1 + nota2 + nota3) / 3;
//   if (media < 60) {
//     return "Sua média final foi D";
//   } else if (media >= 60 && media < 75) {
//     return "Sua média final foi C";
//   } else if (media >= 75 && media < 85) {
//     return "Sua média final foi B";
//   } else {
//     return "Sua média final foi A";
//   }
// }

// tabuada(int numero) {
//   int i = 1;

//   while (i <= 10) {
//     int resultado = i * numero;
//     print("$i X $numero = $resultado");
//     i++;
//   }
// }

// pares() {
//   var listaPar = [];
//   for (int numero = 1; numero <= 100; numero++) {
//     if (numero % 2 == 0) {
//       listaPar.add(numero);
//     }
//   }

//   for (int i = 0; i < listaPar.length; i++) {
//     print(listaPar[i]);
//   }
// }

// encontrarNumero(selecionado) {
//   var lista = [];
//   for (int numero = 1; numero <= 100; numero++) {
//     lista.add(numero);
//   }
//   for (selecionado in lista) {
//     print("O valor está na lista");
//     break;
//   }
// }
