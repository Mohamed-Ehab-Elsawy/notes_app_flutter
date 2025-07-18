import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? initialValue, hintText;
  final Function(String)? onChanged;
  final FormFieldValidator<String>? validator;
  final TextInputType keyboardType;
  final int? maxLines;

  const CustomTextField({
    super.key,
    this.initialValue,
    this.hintText,
    required this.validator,
    required this.keyboardType,
    this.onChanged,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) => TextFormField(
    validator: validator,
    initialValue: initialValue,
    onChanged: onChanged,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.white),
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: EdgeInsets.all(16),
      focusedBorder: _buildBorder(),
      enabledBorder: _buildBorder(),
      errorBorder: _buildBorder(Colors.red),
      focusedErrorBorder: _buildBorder(),
    ),
    cursorColor: Colors.white,
    style: const TextStyle(color: Colors.white),
    keyboardType: keyboardType,
    maxLines: maxLines,
    textAlignVertical: TextAlignVertical.center,
  );

  OutlineInputBorder _buildBorder([color]) => OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}