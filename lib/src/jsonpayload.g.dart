// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jsonpayload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return Payload(
      UserName: json['UserName'] as String,
      AveragePerMonth: (json['AveragePerMonth'] as num)?.toDouble(),
      Increased: (json['Increased'] as List)
          ?.map((e) =>
              e == null ? null : Alerts.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      Recurring: (json['Recurring'] as List)
          ?.map((e) => e == null
              ? null
              : RecurringTransactions.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$PayloadToJson(Payload instance) => <String, dynamic>{
      'UserName': instance.UserName,
      'AveragePerMonth': instance.AveragePerMonth,
      'Increased': instance.Increased,
      'Recurring': instance.Recurring
    };

Alerts _$AlertsFromJson(Map<String, dynamic> json) {
  return Alerts(
      Vendorid: json['Vendorid'] as String,
      Oldprice: (json['Oldprice'] as num)?.toDouble(),
      Newprice: (json['Newprice'] as num)?.toDouble(),
      Vendorname: json['Vendorname'] as String);
}

Map<String, dynamic> _$AlertsToJson(Alerts instance) => <String, dynamic>{
      'Vendorid': instance.Vendorid,
      'Oldprice': instance.Oldprice,
      'Newprice': instance.Newprice,
      'Vendorname': instance.Vendorname
    };

RecurringTransactions _$RecurringTransactionsFromJson(
    Map<String, dynamic> json) {
  return RecurringTransactions(
      Vendorname: json['Vendorname'] as String,
      Price: (json['Price'] as num)?.toDouble());
}

Map<String, dynamic> _$RecurringTransactionsToJson(
        RecurringTransactions instance) =>
    <String, dynamic>{
      'Vendorname': instance.Vendorname,
      'Price': instance.Price
    };
