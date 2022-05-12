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
            //colorScheme: ColorScheme.dark(),
            primarySwatch: Colors.deepPurple,
            textTheme: const TextTheme(
                bodyText2: TextStyle(color: Colors.purple, fontSize: 42))),
        home: const MW2());
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

void printOla() {
  print("Ola");
}

class Widgets2 extends StatelessWidget {
  const Widgets2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Icon(
            Icons.mouse,
            size: 45,
            color: Colors.black,
          ),
          const Icon(
            Icons.lock,
            size: 45,
            color: Colors.grey,
          ),
          const Icon(
            Icons.keyboard,
            size: 45,
            color: Colors.red,
          ),
          ElevatedButton(
            child: const Text("Download",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
            onPressed: printOla,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue[300])),
          ),
        ]),
        const Image(
          image: AssetImage(
              // "assets/Nasa_blue_marble.jpg",
              "assets/logo.png"),
        ),
        //NetworkImage("https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png")

        ElevatedButton.icon(
          icon: Icon(Icons.person),
          label: Text("Pessoa"),
          onPressed: printOla,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.deepPurple,
            width: 10,
          )),
        )
      ]),
    );
  }
}

class MW2 extends StatelessWidget {
  const MW2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer()),
        ),
        title: Text("Título"),
        actions: const [
          Icon(Icons.search),
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: [
          const Text("Drawer"),
          TextButton.icon(
            icon: const Icon(Icons.email),
            label: const Text("Inbox"),
            onPressed: () => print("Olá"),
          ),
          // FloatingActionButton(
          //     onPressed: () => null,
          //     backgroundColor: Colors.red,
          //     child: const Icon(
          //       Icons.exit_to_app,
          // )),
        ],
      )),
      body: const Center(
        child: Text(
          "Teste",
          style: TextStyle(color: Colors.red),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("Este é um floatingActionButton"),
        backgroundColor: Colors.purple,
        child: const Icon(Icons.add),
      ),
    );
  }
}
