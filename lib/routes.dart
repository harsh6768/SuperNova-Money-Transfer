import 'package:flutter/material.dart';
import 'package:money_transfer/main.dart';
import 'package:money_transfer/pay.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      // '/': (_) => App(),
      '/pay': (_) => PayPage(),
    };
  }
}