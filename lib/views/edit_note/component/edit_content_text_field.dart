import 'package:flutter/material.dart';

import '../../../widgets/custom_text_field.dart';

class EditContentTextField extends StatelessWidget {
  final String? initialValue;
  final Function(String) onChange;

  const EditContentTextField({
    super.key,
    required this.onChange,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
    initialValue: initialValue,
    keyboardType: TextInputType.multiline,
    onChanged: onChange,
    maxLines: 100,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Enter content';
      } else {
        return null;
      }
    },
  );
}