import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/button_blue.dart';

class Profile extends StatelessWidget {
  void onLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        body: Center(
          child: ButtonBlue(
            horizontal: 250.0,
            vertical: 48.0,
            text: 'Log out',
            buttonFunction: () => onLogin(context),
            colorbg: colorScheme.primary,
            textColor: Colors.white,
          ),
        ));
  }
}
