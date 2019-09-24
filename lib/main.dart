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
    "Faça sempre o seu melhor!",
    "Acredite que o melhor possa ser feito!",
    "Não espere, ponha em prática!",
    "Mesmo que pareça difícil, não pare!",
    "Só trabalhando é possível trilhar o caminho!",
    "Tenha coragem!",
    "Descubra quem você realmente é…",
    "E se aceite!",
    "Não espere que as respostas caiam do céu!",
    "Aprenda a lidar com as situações do melhor jeito!",
    "Veja sempre o que há de positivo nas coisas!",
    "Não seja vítima das dificuldades, tente ultrapassá-las!",
    "Nunca perca a esperança!",
    "Você não precisa de muito para construir um mundo melhor!",
    "Nunca esqueça que a sua felicidade não depende de mais ninguém!",
    "Desistir à primeira é para os fracos, tente sempre mais uma vez!",
    "Enxergue outros pontos de vista, e tenha sempre presente o objetivo final!",
    "Se motive com as conquistas pessoais e não em bater os outros",
    "Busque inspiração nas pequenas coisas e gestos",
    "A receita para o sucesso está no equilíbrio!"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        /*decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Olá",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  backgroundColor: Colors.deepPurple,
              ),
            ),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.deepPurple,
              onPressed: _gerarFrase,
            )
          ],
        ),
      ),
    );
  }
}
