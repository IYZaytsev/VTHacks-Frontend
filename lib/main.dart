import 'dart:io';
import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_beat_indicator.dart';
import 'package:loading/loading.dart';
import 'package:vthacks7/alerts_section.dart';
import 'package:flutter/services.dart';
import 'package:vthacks7/recurring_transactions.dart';
import 'package:vthacks7/src/jsonpayload.dart';
import 'dart:async';
import 'dart:math';


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
  Payload pload;
  String averageMonth;
  String nameOfUser;
  List<Alerts> alist;
  List<RecurringTransactions> rlist;
  List<Widget> allAlerts = [];
  List<Widget> allRecurring = [];

  Future<Payload> loadData()async{
     pload = await jsonPayload.getPayload();
     averageMonth = pload.AveragePerMonth.toStringAsPrecision(5);
     nameOfUser = pload.UserName;
     alist = pload.Increased;
     rlist = pload.Recurring;  
  
    //This Loops creates the ListTile object for the Alerts from the Json Data
    for(var i = 0; i < alist.length; i++){
      var newPrice = alist[i].Newprice;
      var change = alist[i].Newprice - alist[i].Oldprice;
      var changeString = "\$" + change.toString();
      allAlerts.add(new ListTile(
            contentPadding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
            leading: Icon(Icons.attach_money,
            color: Colors.red),
            title: Text(alist[i].Vendorname, 
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
            subtitle: RichText(
          text: TextSpan(
            text: '\$$newPrice \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
              children: <TextSpan>[
                TextSpan(text: '\t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t +$changeString',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                )
              ]
          ),
        ),
          ));

    }
    for(var i = 0; i < rlist.length; i++){
      var ammount = "\$" + rlist[i].Price.toString();
      allRecurring.add(ListTile(
            contentPadding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
            leading: Icon(Icons.attach_money,
            color: Color(0xFF69F0AE)),
            title: Text(rlist[i].Vendorname,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            subtitle: RichText(
              text: TextSpan(
                text: 'Every month \t \t \t \t \t \t \t \t \t \t',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  children: <TextSpan> [
                    TextSpan(
                      text: ' \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t $ammount',
                        style: TextStyle(
                          color: Color(0xFF69F0AE),
                        )
                    )
                  ]
                ),
            ),
          ));
    }

  }
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
              icon: Icon(Icons.autorenew),
              color: Color(0xFF69F0AE),
              onPressed: () {
                runApp(MyApp());
              },
              tooltip: 'Refreshes app',
              ),
            ),
          Container(
            margin: EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(Icons.power_settings_new),
              color: Color(0xFF69F0AE),
              onPressed: () => exit(0),
              tooltip: 'Close app',
              ),
            ),
        ],
      ),
      backgroundColor: Color(0xFF2962FF),
      body: Stack(children: <Widget>[
        FutureBuilder(future: loadData(), builder: (BuildContext context, snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.none:
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Container(
                color: Color(0xFF2962FF),
                child: Center(
                  child: Loading(indicator: BallBeatIndicator(), size: 100.0),
                ));
            case ConnectionState.done:
            return new ListView(
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
                    child: Text(averageMonth.toString(),
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
          AlertsSection("Alerts",allAlerts),
          RecurringTransaction("Recurring Transactions", allRecurring),
          
        ],
            );
          }
        })
      ],)
    );
  }
}