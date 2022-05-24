import 'package:flutter/material.dart';
import 'package:flutter_aula_6/constants.dart';
import 'package:flutter_aula_6/views/calculadora_view.dart';

void main() {
  runApp(const IMC());
}

class IMC extends StatelessWidget {
  const IMC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IMC",
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(backgroundColor: mainColor),
          scaffoldBackgroundColor: mainColor),
      home: Calculadora(),
    );
  }
}