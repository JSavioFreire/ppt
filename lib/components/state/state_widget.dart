import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ppt/components/game/game_widget.dart';
import 'package:ppt/components/player/play.dart';
import '../matchs/matchs_widget.dart';

class StateWidget extends StatefulWidget {
  const StateWidget({super.key});

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  String resultado = '';
  String enemyPlay = 'enemy';

  @override
  Widget build(BuildContext context) {
    inPlay(props) {
      int enemyChoise = Random().nextInt(3);

      if (props == 'pedra') {
        if (enemyChoise == 0) {
          resultado = 'empate';
          enemyPlay = 'pedra';
        } else if (enemyChoise == 1) {
          resultado = 'derrota';
          enemyPlay = 'papel';
        } else if (enemyChoise == 2) {
          resultado = 'vitoria';
          enemyPlay = 'tesoura';
        }
      } else if (props == 'papel') {
        if (enemyChoise == 0) {
          resultado = 'vitoria';
          enemyPlay = 'pedra';
        } else if (enemyChoise == 1) {
          resultado = 'empate';
          enemyPlay = 'papel';
        } else if (enemyChoise == 2) {
          resultado = 'derrota';
          enemyPlay = 'tesoura';
        }
      } else if (props == 'tesoura') {
        if (enemyChoise == 0) {
          resultado = 'derrota';
          enemyPlay = 'pedra';
        } else if (enemyChoise == 1) {
          resultado = 'vitoria';
          enemyPlay = 'papel';
        } else if (enemyChoise == 2) {
          resultado = 'empate';
          enemyPlay = 'tesoura';
        }
      }
      setState(() {
        resultado;
      });
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Game(resultado, enemyPlay),
        Column(
          children: [const Matchs(), Play(inPlay)],
        ),
      ],
    );
  }
}
