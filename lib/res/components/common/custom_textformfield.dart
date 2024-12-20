import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  const CustomTextformfield({
    super.key,
    this.controller,
    required this.fieldText,
    this.prefixText,
    this.suffixIcon,
  });
  final TextEditingController? controller;
  final String fieldText;
  final String? prefixText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: theme.colorScheme.primary.withOpacity(.5),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: theme.colorScheme.primary.withOpacity(.5),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: theme.colorScheme.primary.withOpacity(.1),
          ),
        ),
        filled: true,
        fillColor: theme.colorScheme.primary.withOpacity(.1),
        labelText: fieldText,
        prefixText: prefixText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
