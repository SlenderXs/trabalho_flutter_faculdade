import 'package:flutter/material.dart';
import 'UploadImagem.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TelaFiliais(),
      ),
    );

class TelaFiliais extends StatefulWidget {
  const TelaFiliais({Key? key}) : super(key: key);

  @override
  _TelaFiliaisState createState() => _TelaFiliaisState();
}

class _TelaFiliaisState extends State<TelaFiliais> {
  ImagePicker imagePicker = ImagePicker();
  File? imagemSelecionada;

  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerCNPJ = TextEditingController();
  final TextEditingController _controllerNomeDaRua = TextEditingController();
  final TextEditingController _controllerBairro = TextEditingController();
  final TextEditingController _controllerCidade = TextEditingController();
  final TextEditingController _controllerEstado = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rede Prime Automotive"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 220, 115, 50),
        actions: <Widget>[
          FlatButton(
            child: Text(
              "CADASTRO DE FILIAIS E SEGURADORAS",
              style: const TextStyle(fontSize: 10.0),
            ),
            textColor: Colors.white,
            onPressed: () {},
          ),
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
                    controller: _controllerCNPJ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'CNPJ',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _controllerNomeDaRua,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nome da Rua',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _controllerBairro,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Bairro',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _controllerCidade,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Cidade',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _controllerEstado,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Estado',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Envie uma da Filial"),
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
                      final String Nome = _controllerNome.text;
                      final int? CNPJ = int.tryParse(_controllerCNPJ.text);
                      final String NomeDaRua = _controllerNomeDaRua.text;
                      final String Bairro = _controllerBairro.text;
                      final String Cidade = _controllerCidade.text;
                      final String Estado = _controllerEstado.text;

                      final Filiais filiaisNovo = Filiais(
                          Nome, CNPJ!, NomeDaRua, Bairro, Cidade, Estado);
                      print(filiaisNovo);
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
      setState(() {
        imagemSelecionada = File(imagemTemporaria.path);
      });
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

class Filiais {
  late final String Nome;
  late final int CNPJ;
  late final String NomeDaRua;
  late final String Bairro;
  late final String Cidade;
  late final String Estado;

  Filiais(this.Nome, this.CNPJ, this.NomeDaRua, this.Bairro, this.Cidade,
      this.Estado);

  @override
  String toString() {
    return 'Cadastro de Filiais{Nome: $Nome, cnpj: $CNPJ, Nome da rua: $NomeDaRua, Bairro: $Bairro, Cidade: $Cidade, Estado: $Estado}';
  }
}
