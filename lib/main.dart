import 'package:flutter/material.dart';
import 'package:vaccination/screens/author/login.dart';
import 'package:vaccination/screens/author/sign_up.dart';
import 'package:vaccination/screens/homepage.dart';
import 'package:vaccination/screens/introduction/check.dart';
import 'package:vaccination/screens/introduction/free.dart';
import 'package:vaccination/screens/introduction/prevent.dart';
import 'package:vaccination/screens/introduction/splash.dart';
import 'package:vaccination/screens/introduction/test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
          '/home': (context) => Homepage(),
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
