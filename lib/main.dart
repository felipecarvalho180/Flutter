import 'package:flutter/material.dart';

void main() {
  runApp(ByteBank());
}

class ByteBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TransferForm(),
      ),
    );
  }
}

class TransferForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Transfer Create'),),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              style: TextStyle(fontSize: 24),
              decoration: InputDecoration(
                labelText: 'Value',
                hintText: '0.00',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              style: TextStyle(fontSize: 24),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: 'Account Number',
                hintText: '0000',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          RaisedButton(
            child: Text('Confirm'),
          )
        ],
      ),
    );
  }
}

class TransferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfers'),
      ),
      body: Column(
        children: <Widget>[
          TransferItem(Transfer(150.32, 1001)),
          TransferItem(Transfer(220.00, 1000)),
          TransferItem(Transfer(70.00, 1002)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add)
      ),
    );
  }
}

class TransferItem extends StatelessWidget {
  final Transfer _transfer;

  TransferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transfer.value.toString()),
        subtitle: Text(_transfer.accountNumber.toString()),
      ),
    );
  }
}

class Transfer {
  final double value;
  final int accountNumber;

  Transfer(this.value, this.accountNumber);
}
