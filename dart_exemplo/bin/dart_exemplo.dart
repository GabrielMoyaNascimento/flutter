import 'dart:io';
import 'package:dart_exemplo/dart_exemplo.dart' as dart_exemplo;

void main(List<String> arguments) {
  print('\n-------------');

  print('Hello Word');

  print('\n----String-----\n');

  String texto;
  texto = "Seu texto aqui";
  print("Olha aqui:" + texto);

  print('\n----Input-----');

  print('\nDigite um texto');
  String? valor = stdin.readLineSync();
  print('\nResposta: $valor');

  print('\n---Calculadora----');

  print('\nDigite o primeiro valor:');
  double? num1 = double.parse(stdin.readLineSync()!);
  print('\nDigite o segundo valor:');
  double? num2 = double.parse(stdin.readLineSync()!);

  double soma = somar(num1, num2);
  double multiplicar = mult(num1, num2);
  double subtrair = sub(num1, num2);
  double dividir = divi(num1, num2);

  print("A soma dos valores é: $soma");
  print("A multiplicação dos valores é: $multiplicar");
  print("A subtração dos valores é: $subtrair");
  print("A divisão dos valores é: $dividir");

  print('\n----Verificar-Idade-----');

  print('\nDigite sua idade:');
  int? idade = int.parse(stdin.readLineSync()!);
  String resultadoIdade = verificarIdade(idade);
  print(resultadoIdade);

  print('\n-------------');

}

somar(num1, num2) {
  double resultado = num1 + num2;
  return resultado;
}

sub(num1, num2) {
  double resultado = num1 - num2;
  return resultado;
}

mult(num1, num2) {
  double resultado = num1 * num2;
  return resultado;
}

divi(num1, num2) {
  double resultado = num1 / num2;
  return resultado;
}

verificarIdade(idade) {
  if (idade <= 12) {
    return "Você é uma criança";
  } else if (idade <= 18) {
    return "Você é um adolescente";
  } else if (idade <= 59) {
    return "Você é um adulto/a";
  } else {
    return "Você é um idoso/a";
  }
}
