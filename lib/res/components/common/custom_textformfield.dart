import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  const CustomTextformfield({
    super.key,
    this.controller,
    required this.fieldText,
    this.prefixText,
  });
  final TextEditingController? controller;
  final String fieldText;
  final String? prefixText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: fieldText,
        prefixText: prefixText,
      ),
    );
  }
}
