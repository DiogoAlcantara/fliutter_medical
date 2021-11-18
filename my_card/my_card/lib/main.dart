import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        //SafeArea tem a função de posicionar os elementos de forma que não prejudiquem a visualização dos ícones nativos do sistema.
        body: SafeArea(
          // Container cria uma espécie da caixa (como se fosse uma DIV HTML), porém o container por padrão tem o tamanho de seu elemento
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('imagens/foto.jpeg'),
                radius: 50.0,
              ),
              Text(
                'Diogo Alcantara',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
