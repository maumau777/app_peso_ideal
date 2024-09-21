import 'package:flutter/material.dart';

import 'pages/peso_ideal_page.dart';



void main() {
  runApp(const AppPesoIdeal());
}

class AppPesoIdeal extends StatelessWidget {
  const AppPesoIdeal({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PesoIdealPage(),
    );
  }
}
