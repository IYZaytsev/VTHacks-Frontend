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
            leading: Icon(Icons.attach_money),
            title: Text('Xfinity'),
            subtitle: Text('Every month'),
          ),
        ],
      ),
    ),
    Positioned(
      top: 0,
      left: 0,
      child: Text(
        _title
      ),
    ),
      ]
  );
  }
}