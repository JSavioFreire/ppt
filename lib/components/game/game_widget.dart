import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  var resultado;
  Game(this.resultado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(resultado),
    );
  }
}
