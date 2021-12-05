import 'package:flutter/material.dart';
import 'package:trabalho_seguradora/cadsatro/tela_filial.dart';
import 'TelaSinistro.dart';
import 'UploadImagem.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TelaFiliais(),
      ),
    );

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  ImagePicker imagePicker = ImagePicker();
  File? imagemSelecionada;

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
            onPressed: () {},
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
                  padding: const EdgeInsets.all(10),
                  child: Text("Envie uma Foto do cliente ou Segurado"),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    imagemSelecionada == null
                        ? Container()
                        : Padding(
                            padding: const EdgeInsets.all(16),
                            child: Image.file(imagemSelecionada!),
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            pegarImagemGaleria();
                          },
                          color: Colors.white,
                          textColor: Colors.black,
                          child: Icon(
                            Icons.add_photo_alternate_outlined,
                            size: 35.0,
                          ),
                          padding: EdgeInsets.all(16.0),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {
                            pegarImagemCamera();
                          },
                          color: Colors.white,
                          textColor: Colors.black,
                          child: Icon(
                            Icons.photo_camera_outlined,
                            size: 35.0,
                          ),
                          padding: EdgeInsets.all(16.0),
                          shape: CircleBorder(),
                        ),
                      ],
                    ),
                  ],
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

  pegarImagemGaleria() async {
    final PickedFile? imagemTemporaria =
        await imagePicker.getImage(source: ImageSource.gallery);
    if (imagemTemporaria != null) {
      setState(
        () {
          imagemSelecionada = File(imagemTemporaria.path);
        },
      );
    }
  }

  pegarImagemCamera() async {
    final PickedFile? imagemTemporaria =
        await imagePicker.getImage(source: ImageSource.camera);
    if (imagemTemporaria != null) {
      setState(() {
        imagemSelecionada = File(imagemTemporaria.path);
      });
    }
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
