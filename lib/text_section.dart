import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  static const double _hPad = 16.0;

  TextSection(this._title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
            leading: Icon(Icons.attach_money),
            title: Text('Xfinity'),
            subtitle: Text('Every month'),
          ),
        ],
      ),
    ),
    Positioned(
      top: 10,
      left: 10,
      child: Text(
        _title,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    ),
      ]
  );
  }
}