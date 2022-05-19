import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.dark(),
      ),
      home: const Visit(),
    );
  }
}

class Visit extends StatelessWidget {
  const Visit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              child: Image(
                image: AssetImage("assets/anonimus.jpg"),
                width: 85,
              ),
            ),
            Container(
              child: const Text(
                "Gabriel Moya",
                style: TextStyle(fontSize: 32),
              ),
            ),
            Container(
              child: const Text(
                "Estudante do IFPR Campus Paranavaí",
                style: TextStyle(fontSize: 32, fontFamily: "ZenLoop"),
              ),
            ),
            SizedBox(
              width: 300,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(
                    Icons.phone,
                    size: 32,
                    color: Colors.blue,
                  ),
                  onPressed: () => null,
                ),
                title: const Text(
                  "+55 (44) 99959-7866",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              color: Colors.white,
              elevation: 20,
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(
                    Icons.email,
                    size: 32,
                    color: Colors.blue,
                  ),
                  onPressed: () => null,
                ),
                title: const Text(
                  "gabrielmoya201415@gmail.com",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              color: Colors.white,
              elevation: 20,
            ),
          ],
        ),
      ),
    );
  }
}
