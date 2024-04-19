import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';

class ButtonGrey extends StatelessWidget {
  var image;
  ButtonGrey({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 35,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          backgroundColor: colorScheme.background,
        ),
        onPressed: () {},
        child: Image(
          image: AssetImage(image),
          width: 30,
          height: 30,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
