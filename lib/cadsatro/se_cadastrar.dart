import 'package:flutter/material.dart';
import 'package:trabalho_seguradora/cadsatro/cadastro.dart';
import 'package:trabalho_seguradora/cadsatro/tela_filial.dart';
import 'TelaSinistro.dart';
import 'UploadImagem.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TelaDeEscolha(),
      ),
    );

class TelaDeEscolha extends StatelessWidget {
  get decoration => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rede Prime Automotive"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 220, 115, 50),
        actions: <Widget>[],
      ),
      body: Form(
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 220, 115, 50),
                    Color.fromARGB(255, 60, 55, 180),
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: ElevatedButton(
                      child: Text('Ir para Cadastro de Cliente ou Segurado. '),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TelaCadastro()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: ElevatedButton(
                      child: Text('Ir para Cadastro de Sinistro.'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TelaSinistro()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: ElevatedButton(
                      child: Text('Ir para Cadastro de Filiais ou Seguradoras'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TelaFiliais()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
