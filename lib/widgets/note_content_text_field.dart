import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class NoteContentTextField extends StatelessWidget {
  final Function(String) onChange;

  const NoteContentTextField({super.key, required this.onChange});

  @override
  Widget build(BuildContext context) => CustomTextField(
    maxLines: 4,
    hintText: 'Content',
    keyboardType: TextInputType.multiline,
    onChanged: onChange,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Enter content';
      } else {
        return null;
      }
    },
  );
}