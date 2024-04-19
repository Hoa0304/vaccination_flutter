import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';

class ButtonBlue extends StatelessWidget {
  double horizontal;
  double vertical;
  var text;
  final VoidCallback buttonFunction;
  ButtonBlue(
      {super.key,
      required this.horizontal,
      required this.vertical,
      required this.text,
      required this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(horizontal, vertical),
        backgroundColor: colorScheme.primary, // Màu nền
        foregroundColor: Colors.white,
      ),
      onPressed: buttonFunction,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1!.merge(
              const TextStyle(fontSize: 20, color: Colors.white),
            ), // Kích thước chữ
      ),
    );
  }
}
