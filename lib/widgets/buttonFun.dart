import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';

class ButtonFun extends StatelessWidget {
  final VoidCallback onPressed;
  final String imagePath;
  final String btntext;

  const ButtonFun({
    Key? key,
    required this.onPressed,
    required this.imagePath,
    required this.btntext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colorScheme.background),
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/image/' + imagePath, width: 80, height: 80),
              Text(
                btntext,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
              )
            ],
          ),
        ),
      ),
    );
  }
}
