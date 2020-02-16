import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
part 'jsonpayload.g.dart';

@JsonSerializable()
class Payload {
  Payload({
    this.UserName,
    this.AveragePerMonth,
    this.Increased,
    this.Recurring
  });
  
  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
  Map<String, dynamic> toJson() => _$PayloadToJson(this);

  final String UserName;
  final double AveragePerMonth;
  final List<Alerts>Increased;
  final List<RecurringTransactions>Recurring;

}

@JsonSerializable()
class Alerts{
    Alerts({
    this.Vendorid,
    this.Oldprice,
    this.Newprice,
    this.Vendorname
  });
  
  
  factory Alerts.fromJson(Map<String, dynamic> json) => _$AlertsFromJson(json);
  Map<String, dynamic> toJson() => _$AlertsToJson(this);


  final String Vendorid;
  final double Oldprice;
  final double Newprice;
  final String Vendorname;

}
@JsonSerializable()
class RecurringTransactions{
    RecurringTransactions({
    this.Vendorname,
    this.Price,
  });
  
  
  factory RecurringTransactions.fromJson(Map<String, dynamic> json) => _$RecurringTransactionsFromJson(json);
  Map<String, dynamic> toJson() => _$RecurringTransactionsToJson(this);


  final String Vendorname;
  final double Price;
}
class jsonPayload{
static Future<Payload> getPayload() async {
  const outEndPoint = 'https://vtrecurtrack.appspot.com/';
  // Retrieve the locations of Google offices
  final response = await http.get(outEndPoint);
  if (response.statusCode == 200) {
    return Payload.fromJson(json.decode(response.body));
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
        ' ${response.reasonPhrase}',
        uri: Uri.parse(outEndPoint));
  }
}
}