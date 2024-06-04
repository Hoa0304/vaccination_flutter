import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:vaccination/theme/theme.dart';

class Input extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String? text;
  final Widget? suffixIcon;
  final double maxHeight;
  final double maxwidth;

  const Input({
    Key? key,
    this.text,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.suffixIcon,
    required this.maxHeight,
    required this.maxwidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (text != null)
          Text(
            text!,
            style: Theme.of(context).textTheme.bodyText2!.merge(
                  const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
          ),
        const SizedBox(height: 2),
        FormBuilderTextField(
          name: text ?? '',
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
              borderSide: BorderSide(color: colorScheme.primary, width: 3.0),
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
            suffixIcon: suffixIcon,
            constraints: BoxConstraints(
              maxWidth: maxwidth,
              maxHeight: maxHeight,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
