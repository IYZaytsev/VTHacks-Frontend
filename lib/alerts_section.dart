import 'package:flutter/material.dart';
import 'package:vthacks7/main.dart';
import 'package:vthacks7/src/jsonpayload.dart';

class AlertsSection extends StatelessWidget {
  final String _title;
  List<Alerts> alist;
  static const double _hPad = 16.0;
  List<Widget> allAlerts;
  AlertsSection(this._title, this.allAlerts);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: allAlerts,
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