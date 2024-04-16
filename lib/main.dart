import 'package:flutter/material.dart';
import 'package:vaccination/pages/author/login.dart';
import 'package:vaccination/pages/introduction/check.dart';
import 'package:vaccination/pages/introduction/free.dart';
import 'package:vaccination/pages/introduction/prevent.dart';
import 'package:vaccination/pages/introduction/splash.dart';
import 'package:vaccination/pages/introduction/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Vaccination App',
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/prevent': (context) => Prevent(),
          '/check': (context) => Check(),
          '/login': (context) => Login(),
          '/free': (context) => Free(),
          '/test': (context) => Test(),
        },
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyText1: TextStyle(
              fontSize: 25,
              fontFamily: 'Inter Pro',
            ),
            bodyText2: TextStyle(
              fontSize: 16,
              fontFamily: 'Inter',
            ),
          ),
        ));
  }
}
