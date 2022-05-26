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
      theme: ThemeData(primarySwatch: Colors.green),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String login = "";

  String email = "";

  String senha = "";

  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) => login = value,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  label: Text("Login"),
                  border: OutlineInputBorder(),
                  hintText: "Digite seu Login",
                  helperText: "Ex: Moya",
                  prefixIcon: Icon(Icons.person)),
            ),
            TextField(
              onChanged: (value) => email = value,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  label: Text("E-mail"),
                  border: OutlineInputBorder(),
                  hintText: "Digite seu e-mail",
                  helperText: "Ex: Moya@email.com",
                  prefixIcon: Icon(Icons.email)),
            ),
            TextField(
                onChanged: (value) => senha = value,
                keyboardType: TextInputType.name,
                obscureText: value,
                decoration: InputDecoration(
                    label: Text("Senha"),
                    border: OutlineInputBorder(),
                    hintText: "Digite sua senha",
                    helperText: "Mínimo 8 dígitos",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () {
                        setState(() {});
                        value = false;
                      },
                    ))),
            ElevatedButton(
              child: Text("Salvar"),
              onPressed: () => showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text("Alerta"),
                        content: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Login:" + login),
                            Text("E-mail:" + email),
                            Text("Senha:" + senha),
                          ],
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
