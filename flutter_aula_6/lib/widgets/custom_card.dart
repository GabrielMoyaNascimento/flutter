import 'package:flutter/material.dart';
import 'package:flutter_aula_6/constants.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.child, this.cor, this.onPressed});

  Widget child;
  Function()? onPressed;
  Color? cor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cor ?? cardColor,
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: onPressed,
        child: child,
      ),
    );
  }
}
