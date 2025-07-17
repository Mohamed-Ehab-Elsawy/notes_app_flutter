import 'package:flutter/material.dart';

class DeleteNoteButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DeleteNoteButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) => IconButton(
    onPressed: onPressed,
    icon: const Icon(Icons.delete_rounded, color: Colors.red, size: 30),
  );
}