import 'package:flutter/material.dart';

void main() {
  // Desafio 01
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[400],
          title: const Text('Eu sou programador'),
        ),
        backgroundColor: Colors.red[100],
        body: Center(
          child: Image(
            image: AssetImage('imagens/tec.png'),
            ),
          ),
      ),
    ),
  );
}
