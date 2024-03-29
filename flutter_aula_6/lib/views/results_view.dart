import 'package:flutter/material.dart';
import 'package:flutter_aula_6/constants.dart';
import 'package:flutter_aula_6/widgets/bottom_button.dart';
import 'package:flutter_aula_6/widgets/custom_card.dart';

class Results extends StatelessWidget {
  Results(
      {required this.resultado, required this.valor, required this.descricao});

  String resultado, valor, descricao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultados"),
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: const Text(
                "Seu Resultado",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              )),
          Expanded(
              child: CustomCard(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                Text(resultado, style: resultStyle),
                Text(valor, style: valueStyle),
                Text(descricao,
                    style: descriptionStyle, textAlign: TextAlign.center)
              ]))),
          BottomButton(
            label: "Calcular Denovo",
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
    );
  }
}
