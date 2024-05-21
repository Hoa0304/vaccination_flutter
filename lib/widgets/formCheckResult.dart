import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';

class formCheckResult extends StatelessWidget {
  const formCheckResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, bottom: 50),
      padding: const EdgeInsets.only(top: 30, bottom: 20, right: 20, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorScheme.onSurface,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Check",
                  style: TextStyle(
                      color: colorScheme.onPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  " COVID-19",
                  style: TextStyle(
                      color: colorScheme.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                ),
                Text(" test result",
                    style: TextStyle(
                        color: colorScheme.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.w900))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: colorScheme.error,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: "Please insert NIN number",
                  labelStyle: TextStyle(
                      color: colorScheme.outlineVariant, fontSize: 16)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: colorScheme.error,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: "Please insert COVID-19 vaccine no",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 50),
                  backgroundColor: Color.fromARGB(255, 0, 242, 255),
                  foregroundColor: Colors.white),
              onPressed: () {},
              child: Text(
                "Check result",
                softWrap: false,
              ),
            ),
          )
        ],
      ),
    );
  }
}
