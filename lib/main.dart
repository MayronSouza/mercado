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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Nome',
                    ),
                    controller: _nomeController,
                    keyboardType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Quantidade',
                    ),
                    controller: _quantidadeController,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Valor',
                    ),
                    controller: _valorController,
                    keyboardType: TextInputType.number,
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
                      final double valor =
                          double.tryParse(_valorController.text);

                      final Produto produtoNovo =
                          Produto(nome, quantidade, valor);
                      print(produtoNovo);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
