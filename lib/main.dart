import 'package:flutter/material.dart';
import 'package:vaccination/views/author/login.dart';
import 'package:vaccination/views/author/sign_up.dart';
import 'package:vaccination/views/introduction/check.dart';
import 'package:vaccination/views/introduction/free.dart';
import 'package:vaccination/views/introduction/prevent.dart';
import 'package:vaccination/views/introduction/splash.dart';
import 'package:vaccination/views/introduction/test.dart';

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
          '/signup': (context) => SignUp(),
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
