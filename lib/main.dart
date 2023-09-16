import 'package:ecocode_sbs/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EntryPage());
}

class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: const WelcomeScreen(),
    );
  }
}
