import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';

class textButton extends StatelessWidget {
  final VoidCallback function;
  final String text;
  final String icon;
  const textButton({
    super.key,
    required this.function,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(colorScheme.onPrimary),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: -4.0, vertical: 0.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
                backgroundColor: colorScheme.onSurface,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Đặt border radius thành 0
                ),
              ),
              onPressed: () {},
              child: Image(
                image: AssetImage(icon),
                width: 30,
                height: 30,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1!.merge(
                        TextStyle(
                          color: colorScheme.shadow,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: colorScheme.outlineVariant,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
        ],
      ),
    );
  }
}
