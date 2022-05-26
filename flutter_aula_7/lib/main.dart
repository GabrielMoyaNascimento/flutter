import 'package:flutter/material.dart';

Future<String> simularDelay() async {
  return Future.delayed(Duration(seconds: 2), () => "abc");
}

void mostrarResultado() async {
  String valor = await simularDelay();
  print(valor);
}

void main() {
  mostrarResultado();
  runApp(const Assincrono());
}

class Assincrono extends StatelessWidget {
  const Assincrono({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Assíncrono",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
