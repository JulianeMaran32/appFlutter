import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "A lição mais importante que aprendi esse ano foi entender que eu realmente não preciso de ninguém. Gosto de estar com as pessoas, quero e escolho estar com elas, mas não preciso de ninguém. A não ser de mim.",
    "É preciso encerrar certos ciclos para a vida fluir. Acabou? Acabou! E se acabou, é porque tem coisa melhor por vir",
    "Não volte para onde você teve que orar para sair.",
    "Gente ruim é capaz de tudo, inclusive de se passar por gente boa.",
    "Se for pra fazer alguma coisa pelos outros para depois ficar reclamando ou passando na cara: não faço! É bem melhor.",
    "Aprenda a amar a sua própria companhia, ninguém vai te fazer tão bem quanto você mesmo.",
    "Se ficar difícil, não desista. Gruda em Deus e continua!",
    "Luxo hoje em dia é morar sozinho e ostentar por ter saúde mental. (Wanderson Duth).",
    "Pense positivamente!",
    "Believe in yourself!",
    "Ele vai te procurar de novo quando você estiver curada, estável e equilibrada (Trecho do livro: O poder do chá de sumiço).",
    "Nem sempre quem ama vai atrás",
    "Deixar ir quem não quer ficar",
    "Respira. Inspira. Não pira.",
    "Você merece todo amor que tenta dar aos outros.",
    "O problema não é me conquistaar. É me manter interessada.",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          // width: double.infinity,
          /* decoration:
              BoxDecoration(border: Border.all(width: 3, color: Colors.amber)
          ), */
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("img/logoSuzi.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              RaisedButton(
                child: Text(
                  "Nova frase",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
