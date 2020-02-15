import 'package:flutter/material.dart';
import 'package:vthacks7/alerts_section.dart';
import 'package:flutter/services.dart';
import 'package:vthacks7/recurring_transactions.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
                TextSpan(text: 'Adi',
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
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.text_format,
              color: Color(0xFF69F0AE),
              ),
          ),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Icon(
              Icons.power_settings_new,
              color: Color(0xFF69F0AE),
              ),
          )
        ],
      ),
      backgroundColor: Color(0xFF2962FF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
      //body: LayoutStarts(),
    );
  }
}

/*class LayoutStarts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
          child: Text(
            'You\'re\ currently paying: ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFFBDbBDBD),
            ),
          )
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(100.0, 40.0, 0.0, 0.0),
          child: Text(
            '\$242.27',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(290.0, 40.0, 0.0, 0.0),
          child: Text(
            '/month',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF69F0AE),
            ),
          )
        ),
      ],
    );
  }
}

class Alerts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        Card(child: ListTile(title: Text('One-line ListTile'))),
          Card(
            child: ListTile(
            leading: FlutterLogo(),
            title: Text('One-line with leading widget'),
          ),
        ),
        Card(
          child: ListTile(
          leading: FlutterLogo(),
          title: Text('One-line with leading widget'),
          ),
        ),
      ]
    );
  }
}*/
/*
Card(
      margin: EdgeInsets.all(32),
      child: Column(
        children: <Widget>[
          Text(
            'Xfinity',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            )
          ),
          SizedBox(height: 6.0),
          Text(
            'Netflix',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
          )
        ]
      ),
    );
    */