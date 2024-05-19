import 'package:flutter/material.dart';

class Cloud extends StatelessWidget {
  const Cloud({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 0.0),
          child: Text(
            "Weather-related illnesses",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: []),
        ),
      ),
    );
  }
}
