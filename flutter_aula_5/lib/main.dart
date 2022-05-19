import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
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
      ),
      home: Xilofone(),
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   String nome = "Rafael";
//   Color corTexto = Colors.green;

//   void mudarNome() {
//     setState(() {
//       nome = "João";
//     });
//   }

//   void mudarCor() {
//     setState(() {
//       corTexto = Colors.red;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               nome,
//               style: TextStyle(
//                 fontSize: 48,
//                 color: corTexto,
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () => setState(() {
//                 mudarNome();
//                 mudarCor();
//               }),
//               child: Text("Mudar Nome"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// Jogo de dados //

// class Dados extends StatefulWidget {
//   const Dados({Key? key}) : super(key: key);

//   @override
//   State<Dados> createState() => _DadosState();
// }

// class _DadosState extends State<Dados> {
//   int dado1 = 3;
//   int dado2 = 6;

//   void mudarDados() {
//     setState(() {
//       dado1 = Random().nextInt(6) + 1;
//       dado2 = Random().nextInt(6) + 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green,
//       appBar: AppBar(
//         title: Text("Dados"),
//         backgroundColor: Colors.orange,
//       ),
//       body: Center(
//         child: InkWell(
//           splashFactory: NoSplash.splashFactory,
//           highlightColor: Colors.transparent,
//           onTap: mudarDados,
//           child: Row(
//             children: [
//               Expanded(
//                 child: Image.asset("assets/dice$dado1.png"),
//               ),
//               SizedBox(
//                 width: 50,
//               ),
//               Expanded(child: Image.asset("assets/dice$dado2.png")),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Audio Player //

class Xilofone extends StatelessWidget {
  Xilofone({Key? key}) : super(key: key);

  var player = AudioCache();

  Widget makeNote(int notaNum, Color cor) {
    return Expanded(
      child: InkWell(
        onTap: () => player.play("note$notaNum.wav"),
        child: Container(
          color: cor,
        ),
      ),
    );
  }

  List<Widget> getNotes() {
    var widgetsLista = <Widget>[];
    for (int i = 1; i < 8; i++) {
      widgetsLista.add(makeNote(i, Colors.primaries[i * 2]));
    }
    return widgetsLista;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: getNotes()));
  }
}
