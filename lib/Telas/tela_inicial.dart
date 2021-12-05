import 'package:flutter/material.dart';
import 'package:trabalho_seguradora/Login/login.dart';

class TelaInicial extends StatelessWidget {
  TelaInicial({Key? key}) : super(key: key);

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      // ignore: prefer_const_constructors
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[TelaLogin()],
    );
  }
}
