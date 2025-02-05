import 'package:flutter/material.dart';
import 'package:portafolio_project/mobile/landing_page_mobile.dart';
import 'package:portafolio_project/routes.dart';
import 'package:portafolio_project/web/landing_page_web.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
