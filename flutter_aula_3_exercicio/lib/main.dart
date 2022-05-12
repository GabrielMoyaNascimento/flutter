import 'package:flutter/material.dart';

void main() {
  runApp(const Aula());
}

class Aula extends StatelessWidget {
  const Aula({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Aplicação",
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            textTheme:
                const TextTheme(bodyText2: TextStyle(color: Colors.black))),
        home: const Exercicio());
  }
}

class Exercicio extends StatelessWidget {
  const Exercicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("I am poor"),
      ),
      body: const Center(
        child: Image(
          image: AssetImage("assets/paper.jpg"),
        ),
      ),
    );
  }
}
