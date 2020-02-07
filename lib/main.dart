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
        title: 'FlashAir Uploader',
        theme: ThemeData(),
        initialRoute: '/',
        onGenerateRoute: Router.generateRoute,
      )
    );
  }
}
