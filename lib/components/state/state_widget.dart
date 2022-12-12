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
  @override
  Widget build(BuildContext context) {
    String resultado = 'vazio';

    inPlay(props) {
      int enemyChoise = Random().nextInt(3);

      if (props == 'pedra') {
        if (enemyChoise == 0) {
          resultado = 'empate';
        } else if (enemyChoise == 1) {
          resultado = 'derrota';
        } else if (enemyChoise == 2) {
          resultado = 'vitoria';
        }
      } else if (props == 'papel') {
        if (enemyChoise == 0) {
          print('inimigo jogou pedra, vitoria');
        } else if (enemyChoise == 1) {
          print('inimigo jogou papel, empate');
        } else if (enemyChoise == 2) {
          print('inimigo jogou tesoura, derrota');
        }
      } else if (props == 'tesoura') {
        if (enemyChoise == 0) {
          print('inimigo jogou pedra, derrota');
        } else if (enemyChoise == 1) {
          print('inimigo jogou papel, vitoria');
        } else if (enemyChoise == 2) {
          print('inimigo jogou tesoura, empate');
        }
      }
    }

 

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Game(resultado),
        Column(
          children: [const Matchs(), Play(inPlay)],
        ),
      ],
    );
  }
}
