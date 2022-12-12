// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Matchs extends StatelessWidget {
  const Matchs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Ultimas partidas jogadas:',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              CircleAvatar(child: Text('Vit')),
              CircleAvatar(child: Text('Der')),
              CircleAvatar(child: Text('Vit'))
            ],
          ),
        ),
      ),
    );
  }
}
