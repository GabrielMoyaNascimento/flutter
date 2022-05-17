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
        // fontFamily: "Zen Loop",
        primarySwatch: Colors.blue,
      ),
      home: const MW3(),
    );
  }
}

class MW3 extends StatelessWidget {
  const MW3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Text(
                "Texto",
                style: TextStyle(fontSize: 64),
              ),
              color: Colors.blue,
            ),
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.album,
                  size: 48,
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 32,
                  ),
                  onPressed: () => null,
                ),
                title: const Text("Texto"),
                subtitle: const Text("Subitulo do ListTile"),
              ),
              color: Colors.white,
              elevation: 20,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
              child: Text(
                "Ra",
                style: TextStyle(fontSize: 48, fontFamily: "Zen Loop"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 48,
                  color: Colors.blue.shade900,
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.drag_handle,
                    size: 26,
                    color: Colors.blue.shade900,
                  ),
                  onPressed: () => null,
                ),
                title: Text("Widget of the week",
                    style: TextStyle(color: Colors.blue.shade900)),
                subtitle: Text(
                  "#54",
                  style: TextStyle(color: Colors.blue.shade900),
                ),
              ),
              color: Colors.lightBlue[100],
              elevation: 20,
            ),
          ],
        ),
      ),
    );
  }
}
