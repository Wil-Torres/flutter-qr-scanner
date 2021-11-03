import 'package:flutter/material.dart';
import 'package:tecunqr/pages/home_page.dart';
import 'package:tecunqr/pages/mapa_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QA Reader',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomePage(),
        'mapa': (_) => MapaPage(),
      },
    );
  }
}
