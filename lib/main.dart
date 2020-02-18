import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './router.dart';

import './provider_setup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Flutter Boilerplate',
        theme: ThemeData(),
        initialRoute: Router.initial(),
        onGenerateRoute: Router.generateRoute,
      )
    );
  }
}
