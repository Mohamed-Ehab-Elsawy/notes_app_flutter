import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class NoteTitleTextField extends StatelessWidget {
  final String? hintText;
  final String? initialValue;
  final Function(String) onChange;

  const NoteTitleTextField({
    super.key,
    required this.onChange,
    this.hintText,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
    hintText: hintText,
    initialValue: initialValue,
    keyboardType: TextInputType.text,
    onChanged: onChange,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Enter title please';
      } else {
        return null;
      }
    },
  );
}