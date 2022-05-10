import 'package:flutter/material.dart';

void main() {
  runApp(const Aula());
}

class Aula extends StatelessWidget {
  const Aula({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Principal());
  }
}

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.blue,
                ),
                Text(
                  "Teste",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 72,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.grey,
                ),
                Text(
                  "Teste",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 72,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
