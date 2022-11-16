import 'package:ecommerce_mina/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';

import '../presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key); // Default Constructor
  // named constructor
  MyApp._internal();

  int appState = 0;
  static final MyApp _instance = MyApp._internal();

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesGenerator.getRoute ,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
