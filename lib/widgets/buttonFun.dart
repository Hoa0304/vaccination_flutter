import 'package:flutter/material.dart';

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
            color: Color.fromARGB(255, 194, 201, 194)),
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/image/' + imagePath),
              Text(
                btntext,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              )
            ],
          ),
        ),
      ),
    );
  }
}
