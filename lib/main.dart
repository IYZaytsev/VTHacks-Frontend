import 'dart:io';

import 'package:flutter/material.dart';
import 'package:vthacks7/alerts_section.dart';
import 'package:flutter/services.dart';
import 'package:vthacks7/recurring_transactions.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  @override
  String name = 'Adi';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -30.0,
        title: RichText(
          text: TextSpan(
            text: 'Hi, ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32),
              children: <TextSpan>[
                TextSpan(text: '$name',
                  style: TextStyle(
                    color: Color(0xFF69F0AE),
                    fontSize: 32,
                  ),
                  children: <TextSpan> [
                    TextSpan(text: '!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                      ),
                    ),
                  ]
                )
              ]
          ),
        ),
        elevation: 0.0,
        backgroundColor: Color(0xFF2962FF),
        leading: Container(
          margin:  EdgeInsets.only(left: 25),
        ),

        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(Icons.power_settings_new),
              color: Color(0xFF69F0AE),
              onPressed: () => exit(0),
              tooltip: 'Close app',
              ),
            )
        ],
      ),
      backgroundColor: Color(0xFF2962FF),
      body: ListView(
        children: [
          Container(
                padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 4.0),
                child: Text("You\'re\ currently paying: ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFBDBDBD),
                  ),
                ),
              ),
          Row(
            children: [
              Container(
                    padding: const EdgeInsets.fromLTRB(100.0, 16.0, 5.0, 16.0),
                    child: Text("\$242.27",
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                ),
              Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 16.0),
                    child: Text("/month",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF69F0AE),
                      ),
                      ),
                ),
            ]
          ),
          AlertsSection("Alerts"),
          RecurringTransactions("Recurring Transactions"),
        ],
      )
    );
  }
}