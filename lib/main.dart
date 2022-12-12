import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/state/state_widget.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pedra, Papel ou Tesoura',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: GoogleFonts.acmeTextTheme(),
        scaffoldBackgroundColor: Colors.orange[100],
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pedra, Papel ou Tesoura',
        ),
        centerTitle: true,
      ),
      body: const StateWidget(),
    );
  }
}
