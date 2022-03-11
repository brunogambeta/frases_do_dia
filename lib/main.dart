import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Imagine uma frase bonita: 1",
    "Imagine uma frase bonita: 2",
    "Imagine uma frase bonita: 3",
    "Imagine uma frase bonita: 4",
    "Imagine uma frase bonita: 5",
    "Imagine uma frase bonita: 6",
    "Imagine uma frase bonita: 7",
    "Imagine uma frase bonita: 8",
    "Imagine uma frase bonita: 9",
    "Imagine uma frase bonita: 10",
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
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              RaisedButton(
                onPressed: _gerarFrase,
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
