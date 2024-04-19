import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';

class ButtonBlue extends StatelessWidget {
  double horizontal;
  double vertical;
  String text;
  var colorbg;
  var textColor;
  final VoidCallback buttonFunction;
  ButtonBlue(
      {Key? key,
      required this.horizontal,
      required this.vertical,
      required this.text,
      required this.buttonFunction,
      required this.colorbg,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        fixedSize: Size(horizontal, vertical),
        backgroundColor: colorbg,
        foregroundColor: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
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
