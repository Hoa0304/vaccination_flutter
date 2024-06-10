import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vaccination/providers/add_schedule.dart';
import 'package:vaccination/providers/weather_provider.dart';
import 'package:vaccination/screens/author/login.dart';
import 'package:vaccination/screens/author/sign_up.dart';
import 'package:vaccination/screens/cloud.dart';
import 'package:vaccination/screens/cloud_nav/cloud_nav.dart';
import 'package:vaccination/screens/features/chatUI.dart';
import 'package:vaccination/screens/features/groupchat.dart';
import 'package:vaccination/screens/features/hospital.dart';
import 'package:vaccination/screens/features/info_hospital.dart';
import 'package:vaccination/screens/features/vaccines.dart';
import 'package:vaccination/screens/homepage.dart';
import 'package:vaccination/screens/introduction/check.dart';
import 'package:vaccination/screens/introduction/free.dart';
import 'package:vaccination/screens/introduction/prevent.dart';
import 'package:vaccination/screens/introduction/splash.dart';
import 'package:vaccination/screens/introduction/test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vaccination/screens/profile.dart';
import 'package:vaccination/screens/schedules.dart';
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
    return ChangeNotifierProvider(
      create: (_) => WeatherProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
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
            '/schedule': (context) => Schedules(),
            '/profile': (context) => Profile(),
            '/add_schedule': (context) => AddSchedule(),
            '/weather': (context) => NavCustom(),
            '/hospital': (context) => Hospital(),
            '/info': (context) => InfoHospital(),
            '/groupchat': (context) => GroupChat(),
            '/vaccine': (context) => Vaccines(),
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
          )),
    );
  }
}
