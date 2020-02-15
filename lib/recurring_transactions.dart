import 'package:flutter/material.dart';

class RecurringTransactions extends StatelessWidget {
  final String _title;
  static const double _hPad = 16.0;

  RecurringTransactions(this._title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
            leading: Icon(Icons.attach_money),
            title: Text('BOFA Checking Fee'),
            subtitle: Text('Every year'),
          ),
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
            leading: Icon(Icons.attach_money),
            title: Text('Disney+'),
            subtitle: Text('Every month'),
          ),
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
            leading: Icon(Icons.attach_money),
            title: Text('Iphone 11 Financing'),
            subtitle: Text('Every month'),
          ),
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
            leading: Icon(Icons.attach_money),
            title: Text('Tesla Roadster 2020'),
            subtitle: Text('Every month'),
          ),
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
            leading: Icon(Icons.attach_money),
            title: Text('Spotify'),
            subtitle: Text('Every month'),
          ),
        ],
      ),
    ),
    Positioned(
      top: 15,
      left: 20,
      child: Text(
        _title,
        style: TextStyle(
          fontSize: 20.0,
          color: Color(0xFF2962FF),
        ),
      ),
    ),
      ]
  );
  }
}