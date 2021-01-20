import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Criando Transferência')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(fontSize: 24.0),
                decoration: InputDecoration(
                    labelText: 'Número da conta', hintText: '0000'),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(fontSize: 24.0),
                decoration: InputDecoration(
                    icon: Icon(Icons.monetization_on),
                    labelText: 'Valor',
                    hintText: '0.00'),
                keyboardType: TextInputType.number,
              ),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Confirmar'),
            )
          ],
        ));
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: Column(
        children: [
          ItemTransferencia(
            transferencia: Transferencia('175.0', '112233'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => null,
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  const ItemTransferencia({Key key, transferencia})
      : _transferencia = transferencia,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valorTransferencia.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final String valorTransferencia;
  final String numeroConta;

  Transferencia(this.valorTransferencia, this.numeroConta);
}
