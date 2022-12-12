import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  final String resultado;
  final String enemy;
  const Game(this.resultado, this.enemy, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [Text('Seu oponente:')],
          ),
        ),
      ),
    );
  }
}
