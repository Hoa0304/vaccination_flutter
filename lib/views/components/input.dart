import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';

class Input extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String text;
  final Widget suffixIcon;

  const Input(
      {Key? key,
      required this.text,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText2!.merge(
                const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
        ),
        const SizedBox(height: 2),
        TextField(
          controller: controller,
          obscureText: obscureText,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 14, // Kích thước chữ mặc định
              ),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: colorScheme.primary, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colorScheme.primary, width: 2.0),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyText2!.merge(
                  TextStyle(
                    fontSize: 15,
                    color: colorScheme.onSecondary,
                  ),
                ),
            contentPadding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
            // contentPadding: const EdgeInsets.symmetric(vertical: 15),
            suffixIcon: suffixIcon,
            constraints: const BoxConstraints(maxWidth: 350, maxHeight: 50),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
