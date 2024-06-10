import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';

class ImageButton extends StatelessWidget {
  final String imageAsset;
  final String text;
  final VoidCallback function;
  ImageButton({
    super.key,
    required this.imageAsset,
    required this.text,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: function,
          child: Container(
            width: 170,
            height: 170,
            child: Image.asset(
              width: 200,
              imageAsset,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1!.merge(
                TextStyle(
                  fontSize: 15,
                  color: colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
          textAlign: TextAlign.center,
        ),
        Text(
          'Vaccine',
          style: Theme.of(context).textTheme.bodyText1!.merge(
                TextStyle(
                  fontSize: 15,
                  color: colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
