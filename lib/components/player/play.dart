import 'package:flutter/material.dart';

class Play extends StatelessWidget {
  final Function inPlay;

  const Play(this.inPlay, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 60,
              child: ElevatedButton(
                  onPressed: () {
                    inPlay('pedra');
                  },
                  child: Image.asset('assets/images/pedra.png')),
            ),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                  onPressed: () {
                    inPlay('papel');
                  },
                  child: Image.asset('assets/images/papel.png')),
            ),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                  onPressed: () {
                    inPlay('tesoura');
                  },
                  child: Image.asset('assets/images/tesoura.png')),
            ),
          ],
        ),
      )),
    );
  }
}
