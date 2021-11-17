import 'package:flutter/material.dart';

void main() {
  // Meu primeiro código flutter
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[600],
          title: const Text('Eu sou Rico!'),
        ),
        backgroundColor: Colors.deepPurple[100],
        body: Center(
            child: Image(
               image: AssetImage('imagens/rubi.png'),
          ),
        ),
      ),
    ),
  );
}
