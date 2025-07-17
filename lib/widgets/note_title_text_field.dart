import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class NoteTitleTextField extends StatelessWidget {
  final Function(String) onChange;

  const NoteTitleTextField({super.key, required this.onChange});

  @override
  Widget build(BuildContext context) => CustomTextField(
    hintText: 'Title',
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