import 'package:flutter/material.dart';

class CircularFAB extends StatelessWidget {
  final VoidCallback onPressed;

  const CircularFAB({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) => FloatingActionButton(
    shape: const CircleBorder(),
    onPressed: onPressed,
    backgroundColor: Colors.white10,
    child: const Icon(Icons.add_rounded, color: Colors.white, size: 32),
  );
}