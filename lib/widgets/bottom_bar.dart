import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final VoidCallback onTap;
  final String imagePath;

  const BottomBar({
    required this.onTap,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 35,
            height: 35,
          ),
        ],
      ),
    );
  }
}
