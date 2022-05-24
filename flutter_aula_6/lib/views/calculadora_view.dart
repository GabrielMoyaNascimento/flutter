import 'package:flutter/material.dart';
import 'package:flutter_aula_6/constants.dart';
import 'package:flutter_aula_6/views/results_view.dart';
import 'package:flutter_aula_6/widgets/bottom_button.dart';
import 'package:flutter_aula_6/widgets/custom_card.dart';
import 'package:flutter_aula_6/widgets/icon_label.dart';
import 'package:flutter_aula_6/widgets/rounded_icon_button.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({Key? key}) : super(key: key);

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  int altura = 175;
  int idade = 20;
  int peso = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: IconLabel(
                      label: "Masculino",
                      icon: Icons.male,
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: IconLabel(
                      label: "Feminino",
                      icon: Icons.female,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Altura",
                    style: labelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        altura.toString(),
                        style: bigText,
                      ),
                      Text("cm")
                    ],
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12),
                        thumbColor: highlightColor,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        trackHeight: 1),
                    child: Slider(
                      min: 120,
                      max: 250,
                      value: altura.toDouble(),
                      onChanged: (value) => setState(() {
                        altura = value.toInt();
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Peso",
                          style: labelStyle,
                        ),
                        Text(
                          peso.toString(),
                          style: bigText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundedIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  peso -= 1;
                                });
                              },
                            ),
                            RoundedIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  peso += 1;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Idade",
                          style: labelStyle,
                        ),
                        Text(
                          idade.toString(),
                          style: bigText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundedIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  idade -= 1;
                                });
                              },
                            ),
                            RoundedIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  idade += 1;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            label: "Calcular",
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Results(),
            )),
          )
        ],
      ),
    );
  }
}
