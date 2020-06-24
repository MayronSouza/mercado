import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _quantidadeController = TextEditingController();
  final TextEditingController _valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastrando produtos'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: _nomeController,
            ),
            TextField(
              controller: _quantidadeController,
            ),
            TextField(
              controller: _valorController,
            ),
            RaisedButton(
              child: Text(
                'Cadastrar',
              ),
              onPressed: () {
                final String nome = _nomeController.text;
                final int quantidade = int.tryParse(_quantidadeController.text);
                final double valor = double.tryParse(_nomeController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
