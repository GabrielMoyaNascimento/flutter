import 'package:flutter/material.dart';
import 'package:flutter_aula_6/constants.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.child});

  Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      margin: EdgeInsets.all(5),
      child: child,
    );
  }
}
