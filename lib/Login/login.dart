import 'package:flutter/material.dart';
import 'package:trabalho_seguradora/cadsatro/cadastro.dart';
import 'package:trabalho_seguradora/info/informações.dart';

class TelaLogin extends StatelessWidget {
  TelaLogin({Key? key}) : super(key: key);

  // ignore: unused_field
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Rede Prime Automotive"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 220, 115, 50),
          actions: <Widget>[
            // ignore: deprecated_member_use
            FlatButton(
              // ignore: prefer_const_constructors
              child: Text(
                "CRIAR CONTA",
                style: const TextStyle(fontSize: 10.0),
              ),
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCadastro()),
                );
              },
            ),
          ]),
      body: Form(
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF757575),
                    Color(0xFF93760A),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            ListView(
              padding: const EdgeInsets.all(16.0),
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "E-mail",
                      hintStyle: TextStyle(color: Colors.white)),
                  keyboardType: TextInputType.emailAddress,
                  validator: (text) {
                    if (text!.isEmpty || !text.contains("@")) {
                      return "Email inválido";
                    }
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Senha",
                      hintStyle: TextStyle(color: Colors.white)),
                  obscureText: true,
                  validator: (text) {
                    if (text!.isEmpty || text.length < 6)
                      // ignore: curly_braces_in_flow_control_structures
                      return "Senha inválida!";
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {},
                    // ignore: prefer_const_constructors
                    child: const Text("Esqueci minha senha",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.right),
                    padding: EdgeInsets.zero,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  height: 44.0,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    textColor: Colors.white,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                  ),
                ),
                const SizedBox(
                  height: 250.0,
                ),
                SizedBox(
                  height: 44.0,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    child: const Text(
                      "Mais Informações",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    textColor: Colors.white,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InformacoesScreen()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
        key: _formKey,
      ),
    );
  }
}
