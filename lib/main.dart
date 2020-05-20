import 'package:flutter/material.dart';
import 'package:money_transfer/feed.dart';
import 'package:money_transfer/routes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: Routes.getRoute(),
      home: FeedPage(),
    );
  }
}
