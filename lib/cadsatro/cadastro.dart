import 'package:flutter/material.dart';
import 'TelaSinistro.dart';

class TelaCadastro extends StatelessWidget {
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerDataDeNascimento =
      TextEditingController();
  final TextEditingController _controllerCPF = TextEditingController();
  final TextEditingController _controllerModeloDoCarro =
      TextEditingController();
  final TextEditingController _controllerPlaca = TextEditingController();
  final TextEditingController _controllerNdoDocumento = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rede Prime Automotive"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 220, 115, 50),
        actions: <Widget>[
          // ignore: deprecated_member_use
          FlatButton(
            child: Text(
              "SE CADASTRAR",
              style: const TextStyle(fontSize: 10.0),
            ),
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TelaSinistro()),
              );
            },
          )
        ],
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
            Column(
              children: <Widget>[
                TextField(
                  controller: _controllerNome,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nome',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _controllerDataDeNascimento,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Data de Nascimento',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _controllerCPF,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'CPF',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _controllerModeloDoCarro,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Modelo do Carro',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _controllerPlaca,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Placa',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _controllerNdoDocumento,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'N° do Documento',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: RaisedButton(
                    child: Text('Cadastrar'),
                    onPressed: () {
                      final String nome = _controllerNome.text;
                      final String DataDeNascimento =
                          _controllerDataDeNascimento.text;
                      final int? CPF = int.tryParse(_controllerCPF.text);
                      final String ModeloDoCarro =
                          _controllerModeloDoCarro.text;
                      final String Placa = _controllerPlaca.text;
                      final String NdoDocumento = _controllerNdoDocumento.text;

                      final Cadastro cadastroNovo = Cadastro(
                          nome,
                          DataDeNascimento,
                          CPF!,
                          ModeloDoCarro,
                          Placa,
                          NdoDocumento);
                      print(cadastroNovo);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Cadastro {
  late final String nome;
  late final String DataDeNascimento;
  late final int CPF;
  late final String ModeloDoCarro;
  late final String Placa;
  late final String NdoDocumento;

  Cadastro(this.nome, this.DataDeNascimento, this.CPF, this.ModeloDoCarro,
      this.Placa, this.NdoDocumento);

  @override
  String toString() {
    return 'Cadastro{nome: $nome, data de nascimento: $DataDeNascimento, CPF: $CPF, modelo do carro: $ModeloDoCarro, placa: $Placa, numero do documento, $NdoDocumento}';
  }
}
