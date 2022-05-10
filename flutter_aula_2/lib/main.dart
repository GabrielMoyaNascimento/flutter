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
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const Widgets2());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(20)),
          child: const Text(
            "Teste",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: const Text(
            "Teste",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Teste",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Teste",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}

class Widgets2 extends StatelessWidget {
  const Widgets2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          Icons.headset,
          size: 42,
          color: Colors.blue,
        ),
        Icon(
          Icons.music_note,
          size: 42,
          color: Colors.green,
        ),
        Icon(
          Icons.umbrella,
          size: 42,
          color: Colors.red,
        ),
        ElevatedButton(
          child: Text("Download"),
          onPressed: printOla,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue[300])),
        ),
        Container(
            child: Image(
          image: AssetImage("assets/logo.png"),
          //NetworkImage("https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"),"
        )),
      ]),
    );
  }
}

void printOla() {
  print("Ola");
}
