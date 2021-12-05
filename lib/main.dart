import 'package:flutter/material.dart';
import 'package:trabalho_seguradora/Telas/tela_inicial.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter's Clothing",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color.fromARGB(255, 70, 35, 150),
      ),
      debugShowCheckedModeBanner: false,
      home: TelaInicial(),
    );
  }
}
