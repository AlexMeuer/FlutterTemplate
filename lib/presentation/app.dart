import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final Router router;

  App({
    Key key,
    @required this.router,
  })  : assert(router != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      navigatorObservers: [FirebaseAnalyticsObserver(analytics: analytics)],
      onGenerateRoute: router.generator,
    );
  }
}
