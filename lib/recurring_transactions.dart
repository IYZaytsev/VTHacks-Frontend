import 'package:flutter/material.dart';

class RecurringTransaction extends StatelessWidget {
  final String _title;
  static const double _hPad = 16.0;
  List<Widget> allRecurring;
  RecurringTransaction(this._title, this.allRecurring);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: allRecurring,
      ),
    ),
    Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
          child: Text(
            _title,
            style: TextStyle(
              fontSize: 20.0,
              color: Color(0xFF2962FF),
            ),
          ),
        ),
    ),
    ]
    );
  }
}