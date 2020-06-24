import 'package:flutter/material.dart';
import 'package:mercado/models/produto.dart';

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
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _nomeController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _quantidadeController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _valorController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RaisedButton(
                  child: Text(
                    'Cadastrar',
                  ),
                  onPressed: () {
                    final String nome = _nomeController.text;
                    final int quantidade =
                        int.tryParse(_quantidadeController.text);
                    final double valor = double.tryParse(_valorController.text);

                    final Produto produtoNovo = Produto(nome, quantidade, valor);
                    print(produtoNovo);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
