import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: InformacoesScreen(),
      ),
    );

class InformacoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          "Informações Gerais",
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: ListView(
          children: <Widget>[
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Descricao(
                        titulo: 'Informações Gerais',
                        pergunta: 'Necessitou?',
                        resposta: 'Procure a Rede Prime Automotive!',
                      ),
                    ),
                  ),
                  child: Text(
                    "Necessitou?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Descricao(
                        titulo: 'Informações Gerais',
                        pergunta: 'Prá quem Ligar?',
                        resposta:
                            'Procure a Rede Prime Automotive e seus parceiros.',
                      ),
                    ),
                  ),
                  child: Text(
                    "Prá quem Ligar?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Descricao(
                        titulo: 'Informações Gerais',
                        pergunta: 'Qual é o número?',
                        resposta:
                            'O telefone de contato é (31)3318-8360 / (31)98470-3470',
                      ),
                    ),
                  ),
                  child: Text(
                    "Qual é o número?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Descricao(
                        titulo: 'Informações Gerais',
                        pergunta: 'Quais ações devo fazer?',
                        resposta:
                            'Realize um boletim de Ocorrência junto a policia militar e depois acione a central de informações da Rede Prime Automotive.',
                      ),
                    ),
                  ),
                  child: Text(
                    "Quais ações devo fazer?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Descricao(
                        titulo: 'Informações Gerais',
                        pergunta: 'Qual oficina devo encaminhar?',
                        resposta:
                            'Procure as oficinas associadas com a Rede Prime Automotive.',
                      ),
                    ),
                  ),
                  child: Text(
                    "Qual oficina devo encaminhar?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Descricao(
                        titulo: 'Informações Gerais',
                        pergunta: 'Como solicitar transporte extra?',
                        resposta:
                            'Entre em contato conosco que irémos providenciar.',
                      ),
                    ),
                  ),
                  child: Text(
                    "Como solicitar transporte extra?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Descricao(
                        titulo: 'Informações Gerais',
                        pergunta: 'Como solicitar Guincho?',
                        resposta:
                            'A Rede Prime Automotive possui diverssos parceiros por toda cidade. Você pode encontrar parceiros no site e no app.',
                      ),
                    ),
                  ),
                  child: Text(
                    "Como solicitar Guincho?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Descricao(
                        titulo: 'Informações Gerais',
                        pergunta: 'Como fazer boletim de Ocorrência?',
                        resposta:
                            'Disque 190 e solicite uma viatura no local, ou acesse o site da PM e realize on-line.',
                      ),
                    ),
                  ),
                  child: Text(
                    "Como fazer boletim de Ocorrência?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Descricao(
                        titulo: 'Informações Gerais',
                        pergunta: 'O que fazer com Terceiros?',
                        resposta:
                            'Nós aconselhamos pegar o contato. Não se preocupe a Rede Prime Automotive irá tratar todo o problema da melhor forma.',
                      ),
                    ),
                  ),
                  child: Text(
                    "O que fazer com Terceiros?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Descricao(
                          titulo: 'Informações Gerais',
                          pergunta:
                              'Como acompanhar os serviços a serem feitos no carro?',
                          resposta:
                              'Você pode acompanhar pelo site ou app, ou se direcionar ao local!'),
                    ),
                  ),
                  child: Text(
                    "Como acompanhar os serviços a serem feitos no carro?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Descricao(
                          titulo: 'Informações Gerais',
                          pergunta: 'Como solicitar carro reserva?',
                          resposta:
                              'Assim que deixar o veiculo na oficina, procure o responsavel desta, para solicitar seu transporte extra. Aguarde onde estiver que o carro chegará até você sem burocrasia.'),
                    ),
                  ),
                  child: Text(
                    "Como solicitar carro reserva?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Descricao(
                          titulo: 'Informações Gerais',
                          pergunta: 'Qual minha franquia?',
                          resposta:
                              'Você pode consulta sua franquia no site e no app da Rede Prime Automotive.'),
                    ),
                  ),
                  child: Text(
                    "Qual minha franquia?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Descricao extends StatelessWidget {
  final String titulo;
  final String pergunta;
  final String resposta;

  Descricao({
    required this.titulo,
    required this.pergunta,
    required this.resposta,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          this.titulo,
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                this.pergunta,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                  backgroundColor: Colors.black,
                ),
              ),
              margin: EdgeInsets.fromLTRB(5, 90, 5, 2),
            ),
            Expanded(
              child: Container(
                child: Text(
                  this.resposta,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    backgroundColor: Colors.black,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(30, 100, 5, 80),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'Voltar',
        child: Icon(
          Icons.arrow_back,
        ),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
